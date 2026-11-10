#!/usr/bin/env python3
"""
update-formula.py — Regenerate Homebrew formulae for clang-tools.

Usage:
    python3 scripts/update-formula.py

This script:
  1. Reads the static binaries' index.json, which lists one release per LLVM
     version with the URL and SHA-512 of every binary
  2. Downloads each macOS binary, checks its SHA-512 and computes the SHA-256
     that Homebrew needs
  3. Regenerates bundle formulae (clang-tools.rb, clang-tools@<ver>.rb)
  4. Regenerates individual tool formulae (clang-format.rb, clang-format@<ver>.rb, etc.)

Set INDEX_URL to read another index (for example a local file:// copy).
"""

from __future__ import annotations

import hashlib
import json
import os
import sys
import tempfile
import urllib.request
from pathlib import Path


# ── Configuration ─────────────────────────────────────────────────────────────

OWNER = "cpp-linter"
REPO = "clang-tools-static-binaries"
INDEX_URL = os.environ.get(
    "INDEX_URL", f"https://{OWNER}.github.io/{REPO}/index.json"
)
INDEX_SCHEMA_VERSION = 1

# The oldest LLVM version that gets a formula. Every newer version listed in
# the index gets one too, so a new LLVM release is picked up automatically.
MIN_VERSION = 19

# Every tool shipped in an upstream release, in the order they appear in the
# generated formulae. `min_version` gates a tool to the LLVM releases that
# actually ship it (e.g. clang-include-cleaner only exists from LLVM 18); tools
# without it are assumed present on every supported version.
TOOLS = [
    {"name": "clang-format"},
    {"name": "clang-tidy"},
    {"name": "clang-query"},
    {"name": "clang-apply-replacements"},
    {"name": "clang-include-cleaner", "min_version": 18},
    {"name": "llvm-cov"},
    {"name": "llvm-profdata"},
    {"name": "llvm-symbolizer"},
    {"name": "clang-scan-deps"},
]

# The bundle formula installs clang-format as its primary binary; every other
# tool is attached as a Homebrew `resource`.
PRIMARY_TOOL = "clang-format"

# Tools that parse code the way the compiler does. They need clang's builtin
# headers (stddef.h, stdarg.h, ...), which clang looks for in
# <directory of the executable>/../lib/clang/<version>/include, and on macOS
# the path of the SDK that holds the C and C++ standard headers.
HEADER_TOOLS = ["clang-tidy", "clang-query", "clang-include-cleaner"]
HEADERS_RESOURCE = "clang-resource-headers"

# Test code that includes only clang's builtin headers: it needs no SDK, and
# fails with "'limits.h' file not found" when the headers are not installed.
BUILTIN_TEST_SOURCE = """\
#include <limits.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>

const size_t int_size = sizeof(int32_t);
const int positive = INT_MAX > 0;
"""
BUILTIN_TEST_FLAGS = ["-std=c++11", "-ffreestanding", "-nostdlibinc"]

# Test code that includes the C library, which is in the macOS SDK. Only the
# newest LLVM version runs it: an old clang cannot always parse a new SDK.
SDK_TEST_SOURCE = """\
#include <stdio.h>
#include <string.h>

size_t length(const char *text) { return strlen(text); }
"""

# How each tool is run on a test file in the formula's `test do` block.
TEST_COMMANDS = {
    "clang-tidy": "'--checks=-*,bugprone-*'",
    "clang-query": "-c 'match functionDecl()'",
    "clang-include-cleaner": "--print=changes",
}

PLATFORMS = ["macos-arm64", "macos-amd64"]

SCRIPT_DIR = Path(__file__).resolve().parent
TAP_DIR = SCRIPT_DIR.parent
FORMULA_DIR = TAP_DIR / "Formula"


# ── Tool helpers ────────────────────────────────────────────────────────────


def tools_for_version(version: int) -> list[str]:
    """Names of the tools shipped for a given LLVM version, in formula order."""
    return [t["name"] for t in TOOLS if version >= t.get("min_version", 0)]


def always_available_tools() -> list[str]:
    """Tools present on every supported version (no `min_version`).

    These are the ones safe to smoke-test in the bundle formula; version-gated
    tools are installed with a `rescue` and skipped in the test to keep it valid
    across all versions.
    """
    return [t["name"] for t in TOOLS if "min_version" not in t]


def formula_class(name: str, version: int | None = None, is_latest: bool = True) -> str:
    """Homebrew formula class name for a tool (e.g. llvm-cov -> LlvmCov).

    Follows Homebrew's own convention: split on '-', capitalize each part, join.
    Versioned formulae get an `ATxx` suffix (e.g. clang-tidy@18 -> ClangTidyAT18).
    """
    base = "".join(part.capitalize() for part in name.split("-"))
    return base if is_latest else f"{base}AT{version}"


# ── Index helpers ──────────────────────────────────────────────────────────


def fetch_index(url: str = INDEX_URL) -> dict:
    """Download and check the static binaries' index.json."""
    with urllib.request.urlopen(url, timeout=30) as resp:
        index = json.load(resp)
    if not isinstance(index, dict) or index.get("schema_version") != INDEX_SCHEMA_VERSION:
        sys.exit(f"Unsupported index at {url}; update this script.")
    return index


def formula_version(entry: dict) -> str:
    """The formula version of an index entry: its release tag without `llvm-`.

    A rebuilt release (e.g. `llvm-22.1.8-2`) gets a new version, so Homebrew
    upgrades to it.
    """
    return entry["tag"].removeprefix("llvm-")


def sha256_of_binary(url: str, sha512: str) -> str:
    """Download a binary, check it against the index's SHA-512 and return its SHA-256."""
    h256, h512 = hashlib.sha256(), hashlib.sha512()
    with urllib.request.urlopen(url, timeout=120) as resp:
        while chunk := resp.read(1 << 20):
            h256.update(chunk)
            h512.update(chunk)
    if h512.hexdigest() != sha512.lower():
        sys.exit(f"SHA-512 mismatch for {url}")
    return h256.hexdigest()


def asset_name(tool: str, version: int, platform: str) -> str:
    """The release asset name of a tool binary."""
    return f"{tool}-{version}_{platform}"


def sha(sha_map: dict[str, str], tool: str, version: int, platform: str) -> str:
    """Look up the SHA-256 for a given tool/version/platform."""
    return sha_map[asset_name(tool, version, platform)]


def rel_url(entry: dict, tool: str, platform: str) -> str:
    """The download URL of a tool binary, as listed in the index."""
    return entry["tools"][tool][platform]["url"]


def headers_file(entry: dict) -> dict | None:
    """The index entry of clang's builtin headers, or None for an old release."""
    return entry.get("resource_headers")


def headers_resource_lines(entry: dict, sha_map: dict[str, str]) -> list[str]:
    """The `resource` block of clang's builtin headers (same on ARM and Intel)."""
    file = headers_file(entry)
    if file is None:
        return []
    return [
        f'  resource "{HEADERS_RESOURCE}" do',
        f'    url "{file["url"]}"',
        f'    sha256 "{sha_map[file["name"]]}"',
        "  end",
        "",
    ]


def executable_lines() -> list[str]:
    """Ruby that makes the binaries in libexec/bin executable.

    A release asset is downloaded without the executable bit. Homebrew sets it
    for binaries in bin, but leaves libexec as the formula installed it.
    """
    return [
        "    # Homebrew makes downloaded binaries executable in bin, but not here.",
        '    chmod 0755, Dir["#{libexec}/bin/*"]',
    ]


def install_headers_lines() -> list[str]:
    """Ruby that unpacks clang's builtin headers to libexec/lib/clang."""
    return [
        "    # clang looks for its builtin headers in ../lib/clang/<version>/include,",
        "    # relative to the executable in libexec/bin.",
        f'    resource("{HEADERS_RESOURCE}").stage do',
        '      (libexec/"lib").install Dir["{lib/clang,clang}"].first',
        "    end",
    ]


def wrapper_lines(tools: list[str]) -> list[str]:
    """Ruby that writes bin/<tool>, a script that sets SDKROOT and runs the tool.

    Apple's clang finds the macOS SDK by itself. These binaries are built from
    upstream LLVM, which does not, so without SDKROOT (or -isysroot in the
    compile command) they stop at "'stdio.h' file not found".
    """
    names = " ".join(tools)
    return [
        f"    %w[{names}].each do |tool|",
        "      (bin/tool).write <<~SH",
        "        #!/bin/bash",
        "        # The C and C++ standard headers are in the macOS SDK. Upstream clang",
        "        # needs SDKROOT to find it; an SDKROOT that is already set is kept.",
        '        if [ -z "${SDKROOT:-}" ]; then',
        '          sdk="$(/usr/bin/xcrun --show-sdk-path 2>/dev/null)"',
        '          [ -n "$sdk" ] && export SDKROOT="$sdk"',
        "        fi",
        '        exec "#{libexec}/bin/#{tool}" "$@"',
        "      SH",
        "      chmod 0755, bin/tool",
        "    end",
    ]


def code_test_lines(tools: list[str], is_latest: bool) -> list[str]:
    """Ruby for `test do` that runs each header tool on real code.

    clang-query and clang-include-cleaner exit with 0 after a compiler error,
    so the output is checked too.
    """
    if not tools:
        return []
    lines = ['    (testpath/"builtin.cpp").write <<~CPP']
    lines += [f"      {line}" if line else "" for line in BUILTIN_TEST_SOURCE.splitlines()]
    lines.append("    CPP")
    if is_latest:
        lines.append('    (testpath/"sdk.c").write <<~C')
        lines += [f"      {line}" if line else "" for line in SDK_TEST_SOURCE.splitlines()]
        lines.append("    C")
    lines.append(f'    flags = "{" ".join(BUILTIN_TEST_FLAGS)}"')
    for tool in tools:
        command = f"#{{bin}}/{tool} {TEST_COMMANDS[tool]}"
        lines.append(
            f'    refute_match "error:", shell_output("{command} builtin.cpp -- #{{flags}} 2>&1")'
        )
        # One tool is enough to show that the SDK is found, and clang-tidy and
        # clang-query are the ones people run on whole projects.
        if is_latest and tool != "clang-include-cleaner":
            lines.append(f'    refute_match "error:", shell_output("{command} sdk.c -- 2>&1")')
    return lines


# ── Bundle formula (clang-tools) ───────────────────────────────────────────────


def generate_bundle_formula(
    version: int,
    entry: dict,
    sha_map: dict[str, str],
    is_latest: bool,
) -> str:
    """Generate the content of the 'clang-tools' Homebrew formula (bundle)."""
    ver = version
    class_name = "ClangTools" if is_latest else f"ClangToolsAT{ver}"

    available = tools_for_version(ver)
    resource_tools = [t for t in available if t != PRIMARY_TOOL]

    # Human-readable description lists every shipped tool, primary first.
    tools_desc = ", ".join(available[:-1]) + ", and " + available[-1]

    lines: list[str] = []

    lines.append(f"class {class_name} < Formula")
    lines.append(f'  desc "Static binaries for {tools_desc}"')
    lines.append(f"  homepage \"https://github.com/{OWNER}/{REPO}\"")
    lines.append(f'  version "{formula_version(entry)}"')
    lines.append("")

    # ── ARM / Intel share the same resource layout, differing only by platform ──
    for on_block, platform in (("on_arm", "macos-arm64"), ("on_intel", "macos-amd64")):
        lines.append(f"  {on_block} do")
        lines.append(f'    url "{rel_url(entry, PRIMARY_TOOL, platform)}"')
        lines.append(f'    sha256 "{sha(sha_map, PRIMARY_TOOL, ver, platform)}"')
        lines.append("")

        for tool in resource_tools:
            lines.append(f'    resource "{tool}" do')
            lines.append(f'      url "{rel_url(entry, tool, platform)}"')
            lines.append(f'      sha256 "{sha(sha_map, tool, ver, platform)}"')
            lines.append("    end")
            lines.append("")

        lines.append("  end")
        lines.append("")

    has_headers = headers_file(entry) is not None
    lines += headers_resource_lines(entry, sha_map)

    # ── Install method ──
    # Everything goes to libexec, in the layout clang expects: bin/ next to
    # lib/clang/<version>/include. bin/ gets a link to each tool, or a script
    # that sets SDKROOT for the tools that parse code.
    header_tools = [t for t in available if t in HEADER_TOOLS] if has_headers else []
    install_list = " ".join(resource_tools)
    lines.append("  def install")
    lines.append('    (libexec/"bin").install Dir["clang-format-*"].first => "clang-format"')
    lines.append(f"    %w[{install_list}].each do |tool|")
    lines.append("      resource(tool).stage do")
    lines.append('        (libexec/"bin").install Dir["*"].first => tool')
    lines.append("      end")
    lines.append("    end")
    lines += executable_lines()
    if has_headers:
        lines += install_headers_lines()
    lines.append("")
    linked = " ".join(t for t in available if t not in header_tools)
    lines.append(f"    %w[{linked}].each do |tool|")
    lines.append('      bin.install_symlink libexec/"bin"/tool')
    lines.append("    end")
    if header_tools:
        lines += wrapper_lines(header_tools)
    lines.append("  end")
    lines.append("")

    # ── Test ──
    lines.append("  test do")
    for tool in available:
        if tool not in header_tools:
            lines.append(f'    system bin/"{tool}", "--version"')
    lines += code_test_lines(header_tools, is_latest)
    lines.append("  end")
    lines.append("end")
    lines.append("")

    return "\n".join(lines)


# ── Individual tool formula ────────────────────────────────────────────────────


def generate_individual_formula(
    tool: str,
    version: int,
    entry: dict,
    sha_map: dict[str, str],
    is_latest: bool,
) -> str:
    """Generate the content of an individual tool formula."""
    ver = version
    class_name = formula_class(tool, ver, is_latest)
    desc = f"Static binary for {tool}"

    lines: list[str] = []

    lines.append(f"class {class_name} < Formula")
    lines.append(f'  desc "{desc}"')
    lines.append(f"  homepage \"https://github.com/{OWNER}/{REPO}\"")
    lines.append(f'  version "{formula_version(entry)}"')
    lines.append("")

    # ── ARM ──
    lines.append("  on_arm do")
    lines.append(f'    url "{rel_url(entry, tool, "macos-arm64")}"')
    lines.append(f'    sha256 "{sha(sha_map, tool, ver, "macos-arm64")}"')
    lines.append("  end")
    lines.append("")

    # ── Intel ──
    lines.append("  on_intel do")
    lines.append(f'    url "{rel_url(entry, tool, "macos-amd64")}"')
    lines.append(f'    sha256 "{sha(sha_map, tool, ver, "macos-amd64")}"')
    lines.append("  end")
    lines.append("")

    with_headers = tool in HEADER_TOOLS and headers_file(entry) is not None
    if with_headers:
        lines += headers_resource_lines(entry, sha_map)

    # ── Install method ──
    lines.append("  def install")
    if with_headers:
        lines.append(f'    (libexec/"bin").install Dir["{tool}-*"].first => "{tool}"')
        lines += executable_lines()
        lines += install_headers_lines()
        lines += wrapper_lines([tool])
    else:
        lines.append(f'    bin.install Dir["{tool}-*"].first => "{tool}"')
    lines.append("  end")
    lines.append("")

    # ── Test ──
    lines.append("  test do")
    if with_headers:
        lines += code_test_lines([tool], is_latest)
    else:
        lines.append(f'    system bin/"{tool}", "--version"')
    lines.append("  end")
    lines.append("end")
    lines.append("")

    return "\n".join(lines)


# ── Main ───────────────────────────────────────────────────────────────────────


def main() -> None:
    if len(sys.argv) != 1:
        print(f"Usage: {sys.argv[0]}  (set INDEX_URL to read another index)")
        sys.exit(1)

    print(f":: Reading {INDEX_URL} ...")
    index = fetch_index()
    entries = {
        int(major): entry
        for major, entry in index["versions"].items()
        if int(major) >= MIN_VERSION
    }
    versions = sorted(entries, reverse=True)
    if not versions:
        sys.exit(f"The index lists no LLVM version >= {MIN_VERSION}.")

    print(":: Checking binaries and computing SHA-256 checksums ...")
    sha_map: dict[str, str] = {}
    for ver in versions:
        entry = entries[ver]
        for tool in tools_for_version(ver):
            for platform in PLATFORMS:
                name = asset_name(tool, ver, platform)
                try:
                    file = entry["tools"][tool][platform]
                except KeyError:
                    sys.exit(f"{entry['tag']} has no {name} in the index.")
                sha_map[name] = sha256_of_binary(file["url"], file["sha512"])
                print(f"  ✓ {name} ({entry['tag']})")
        headers = headers_file(entry)
        if headers is not None:
            sha_map[headers["name"]] = sha256_of_binary(headers["url"], headers["sha512"])
            print(f"  ✓ {headers['name']} ({entry['tag']})")

    print()
    print(":: Generating bundle formulae (clang-tools) ...")

    FORMULA_DIR.mkdir(parents=True, exist_ok=True)

    for i, ver in enumerate(versions):
        is_latest = (i == 0)
        formula_name = "clang-tools.rb" if is_latest else f"clang-tools@{ver}.rb"
        formula_path = FORMULA_DIR / formula_name

        content = generate_bundle_formula(ver, entries[ver], sha_map, is_latest)
        formula_path.write_text(content)
        print(f"  ✓ {formula_name}")

    print()
    print(":: Generating individual tool formulae ...")

    for i, ver in enumerate(versions):
        is_latest = (i == 0)
        for tool in tools_for_version(ver):
            formula_name = f"{tool}.rb" if is_latest else f"{tool}@{ver}.rb"
            formula_path = FORMULA_DIR / formula_name

            content = generate_individual_formula(tool, ver, entries[ver], sha_map, is_latest)
            formula_path.write_text(content)
            print(f"  ✓ {formula_name}")

    print()
    rb_files = sorted(FORMULA_DIR.glob("*.rb"))
    print(f":: Done! Generated {len(rb_files)} formula files.")
    print("   Releases: " + ", ".join(entries[v]["tag"] for v in versions))


if __name__ == "__main__":
    main()

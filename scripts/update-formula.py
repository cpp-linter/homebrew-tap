#!/usr/bin/env python3
"""
update-formula.py — Regenerate Homebrew formulae for clang-tools.

Usage:
    python3 scripts/update-formula.py <release-tag>

Example:
    python3 scripts/update-formula.py 2026.06.15-a56c0263

This script:
  1. Downloads SHA256 checksums for all tool binaries from the given release
  2. Regenerates bundle formulae (clang-tools.rb, clang-tools@<ver>.rb)
  3. Regenerates individual tool formulae (clang-format.rb, clang-format@<ver>.rb, etc.)
"""

from __future__ import annotations

import hashlib
import os
import sys
import tempfile
import urllib.request
from pathlib import Path


# ── Configuration ──────────────────────────────────────────────────────────────

OWNER = "cpp-linter"
REPO = "clang-tools-static-binaries"
VERSIONS = [22, 21, 20, 19, 18]
TOOLS_ALL = ["clang-format", "clang-tidy", "clang-query", "clang-apply-replacements"]
TOOLS_IC = ["clang-include-cleaner"]  # LLVM 18+
# LLVM utility binaries + clang-scan-deps, shipped for every supported version.
# These live alongside the clang tools in each upstream release and must be kept
# in sync here, otherwise a regeneration would silently drop them.
TOOLS_EXTRA = ["llvm-cov", "llvm-profdata", "llvm-symbolizer", "clang-scan-deps"]
PLATFORMS = ["macos-arm64", "macos-amd64"]

# Individual tool formula metadata
# tool_key -> {class_prefix, bin_name, desc}
INDIVIDUAL_TOOLS = {
    "clang-format": {
        "class_prefix": "ClangFormat",
        "bin": "clang-format",
        "desc": "clang-format",
    },
    "clang-tidy": {
        "class_prefix": "ClangTidy",
        "bin": "clang-tidy",
        "desc": "clang-tidy",
    },
    "clang-query": {
        "class_prefix": "ClangQuery",
        "bin": "clang-query",
        "desc": "clang-query",
    },
    "clang-apply-replacements": {
        "class_prefix": "ClangApplyReplacements",
        "bin": "clang-apply-replacements",
        "desc": "clang-apply-replacements",
    },
    "clang-include-cleaner": {
        "class_prefix": "ClangIncludeCleaner",
        "bin": "clang-include-cleaner",
        "desc": "clang-include-cleaner",
    },
    "llvm-cov": {
        "class_prefix": "LlvmCov",
        "bin": "llvm-cov",
        "desc": "llvm-cov",
    },
    "llvm-profdata": {
        "class_prefix": "LlvmProfdata",
        "bin": "llvm-profdata",
        "desc": "llvm-profdata",
    },
    "llvm-symbolizer": {
        "class_prefix": "LlvmSymbolizer",
        "bin": "llvm-symbolizer",
        "desc": "llvm-symbolizer",
    },
    "clang-scan-deps": {
        "class_prefix": "ClangScanDeps",
        "bin": "clang-scan-deps",
        "desc": "clang-scan-deps",
    },
}

SCRIPT_DIR = Path(__file__).resolve().parent
TAP_DIR = SCRIPT_DIR.parent
FORMULA_DIR = TAP_DIR / "Formula"


# ── Helpers ────────────────────────────────────────────────────────────────────


def sha256_of_url(url: str) -> str | None:
    """Download a URL and return its SHA-256 hex digest, or None on failure."""
    try:
        with urllib.request.urlopen(url, timeout=30) as resp:
            data = resp.read()
        return hashlib.sha256(data).hexdigest()
    except Exception:
        return None


def asset_name(tool: str, version: int, platform: str) -> str:
    """Construct the GitHub release asset name for a tool binary."""
    return f"{tool}-{version}_{platform}"


def asset_url(tool: str, version: int, platform: str, release_tag: str) -> str:
    name = asset_name(tool, version, platform)
    return f"https://github.com/{OWNER}/{REPO}/releases/download/{release_tag}/{name}"


def sha(sha_map: dict[str, str], tool: str, version: int, platform: str) -> str:
    """Look up the SHA-256 for a given tool/version/platform."""
    key = asset_name(tool, version, platform)
    return sha_map.get(key, "")


def rel_url(tool: str, version: int, platform: str, release_tag: str) -> str:
    """Shortcut for asset_url."""
    return asset_url(tool, version, platform, release_tag)


def bundle_resource_tools(version: int) -> list[str]:
    """Tools bundled as Homebrew resources (everything except clang-format), in file order.

    clang-format is the primary download (url/sha on the formula body); every other
    tool is emitted as a `resource` block. Order here defines the order in the
    generated formula and must match the hand-maintained files.
    """
    tools = ["clang-tidy", "clang-query", "clang-apply-replacements"]
    if version >= 18:
        tools.append("clang-include-cleaner")
    tools += TOOLS_EXTRA
    return tools


# ── Bundle formula (clang-tools) ───────────────────────────────────────────────


def generate_bundle_formula(
    version: int,
    release_tag: str,
    sha_map: dict[str, str],
    is_latest: bool,
) -> str:
    """Generate the content of the 'clang-tools' Homebrew formula (bundle)."""
    ver = version
    class_name = "ClangTools" if is_latest else f"ClangToolsAT{ver}"

    resource_tools = bundle_resource_tools(ver)

    # Human-readable description lists clang-format first, then every resource.
    desc_tools = ["clang-format"] + resource_tools
    tools_desc = ", ".join(desc_tools[:-1]) + ", and " + desc_tools[-1]

    lines: list[str] = []

    lines.append(f"class {class_name} < Formula")
    lines.append(f'  desc "Static binaries for {tools_desc}"')
    lines.append(f"  homepage \"https://github.com/{OWNER}/{REPO}\"")
    lines.append(f'  version "{ver}"')
    lines.append("")

    # ── ARM / Intel share the same resource layout, differing only by platform ──
    for on_block, platform in (("on_arm", "macos-arm64"), ("on_intel", "macos-amd64")):
        lines.append(f"  {on_block} do")
        lines.append(f'    url "{rel_url("clang-format", ver, platform, release_tag)}"')
        lines.append(f'    sha256 "{sha(sha_map, "clang-format", ver, platform)}"')
        lines.append("")

        for tool in resource_tools:
            lines.append(f'    resource "{tool}" do')
            lines.append(f'      url "{rel_url(tool, ver, platform, release_tag)}"')
            lines.append(f'      sha256 "{sha(sha_map, tool, ver, platform)}"')
            lines.append("    end")
            lines.append("")

        lines.append("  end")
        lines.append("")

    # ── Install method ──
    install_list = " ".join(resource_tools)
    lines.append("  def install")
    lines.append('    # Install the main binary (clang-format)')
    lines.append('    bin.install Dir["clang-format-*"].first => "clang-format"')
    lines.append("")
    lines.append("    # Install tool resources")
    lines.append(f"    %w[{install_list}].each do |tool|")
    lines.append("      next unless resource(tool)")
    lines.append("      resource(tool).stage do")
    lines.append('        bin.install Dir["*"].first => tool')
    lines.append("      end")
    lines.append("    rescue")
    lines.append("      # Skip if resource not defined (e.g., clang-include-cleaner < v18)")
    lines.append("    end")
    lines.append("  end")
    lines.append("")

    # ── Test ──
    # clang-include-cleaner is intentionally not smoke-tested (it is version-gated).
    test_tools = ["clang-format"] + [t for t in resource_tools if t != "clang-include-cleaner"]
    lines.append("  test do")
    for tool in test_tools:
        lines.append(f'    system "#{{bin}}/{tool}", "--version"')
    lines.append("  end")
    lines.append("end")
    lines.append("")

    return "\n".join(lines)


# ── Individual tool formula ────────────────────────────────────────────────────


def generate_individual_formula(
    tool_key: str,
    version: int,
    release_tag: str,
    sha_map: dict[str, str],
    is_latest: bool,
) -> str:
    """Generate the content of an individual tool formula."""
    info = INDIVIDUAL_TOOLS[tool_key]
    ver = version
    class_name = info["class_prefix"] if is_latest else f'{info["class_prefix"]}AT{ver}'
    bin_name = info["bin"]
    desc = f"Static binary for {info['desc']}"

    lines: list[str] = []

    lines.append(f"class {class_name} < Formula")
    lines.append(f'  desc "{desc}"')
    lines.append(f"  homepage \"https://github.com/{OWNER}/{REPO}\"")
    lines.append(f'  version "{ver}"')
    lines.append("")

    # ── ARM ──
    lines.append("  on_arm do")
    lines.append(f'    url "{rel_url(tool_key, ver, "macos-arm64", release_tag)}"')
    lines.append(f'    sha256 "{sha(sha_map, tool_key, ver, "macos-arm64")}"')
    lines.append("  end")
    lines.append("")

    # ── Intel ──
    lines.append("  on_intel do")
    lines.append(f'    url "{rel_url(tool_key, ver, "macos-amd64", release_tag)}"')
    lines.append(f'    sha256 "{sha(sha_map, tool_key, ver, "macos-amd64")}"')
    lines.append("  end")
    lines.append("")

    # ── Install method ──
    lines.append("  def install")
    lines.append(f'    bin.install Dir["{tool_key}-*"].first => "{bin_name}"')
    lines.append("  end")
    lines.append("")

    # ── Test ──
    lines.append("  test do")
    lines.append(f'    system "#{{bin}}/{bin_name}", "--version"')
    lines.append("  end")
    lines.append("end")
    lines.append("")

    return "\n".join(lines)


# ── Main ───────────────────────────────────────────────────────────────────────


def main() -> None:
    if len(sys.argv) != 2:
        print(f"Usage: {sys.argv[0]} <release-tag>")
        print("Example: python3 scripts/update-formula.py 2026.06.15-a56c0263")
        sys.exit(1)

    release_tag = sys.argv[1]

    print(f":: Fetching checksums from release {release_tag} ...")

    # Collect SHA-256 for every asset
    sha_map: dict[str, str] = {}

    # All tools that may exist per version
    for ver in VERSIONS:
        all_tools_for_ver = TOOLS_ALL + (TOOLS_IC if ver >= 18 else []) + TOOLS_EXTRA
        for tool in all_tools_for_ver:
            for platform in PLATFORMS:
                name = asset_name(tool, ver, platform)
                url = asset_url(tool, ver, platform, release_tag)
                s = sha256_of_url(url)
                if s:
                    sha_map[name] = s
                    print(f"  ✓ {name}")
                else:
                    print(f"  ✗ {name} (not found, skipping)")

    print()
    print(":: Generating bundle formulae (clang-tools) ...")

    FORMULA_DIR.mkdir(parents=True, exist_ok=True)

    for i, ver in enumerate(VERSIONS):
        is_latest = (i == 0)
        formula_name = "clang-tools.rb" if is_latest else f"clang-tools@{ver}.rb"
        formula_path = FORMULA_DIR / formula_name

        content = generate_bundle_formula(ver, release_tag, sha_map, is_latest)
        formula_path.write_text(content)
        print(f"  ✓ {formula_name}")

    print()
    print(":: Generating individual tool formulae ...")

    for i, ver in enumerate(VERSIONS):
        is_latest = (i == 0)
        all_tools_for_ver = list(INDIVIDUAL_TOOLS.keys())
        # clang-include-cleaner only from LLVM 18+
        if ver < 18:
            all_tools_for_ver = [t for t in all_tools_for_ver if t != "clang-include-cleaner"]

        for tool_key in all_tools_for_ver:
            formula_name = f"{tool_key}.rb" if is_latest else f"{tool_key}@{ver}.rb"
            formula_path = FORMULA_DIR / formula_name

            content = generate_individual_formula(tool_key, ver, release_tag, sha_map, is_latest)
            formula_path.write_text(content)
            print(f"  ✓ {formula_name}")

    print()
    rb_files = sorted(FORMULA_DIR.glob("*.rb"))
    print(f":: Done! Generated {len(rb_files)} formula files.")
    print(f"   Release tag: {release_tag}")
    print()
    print("Next steps:")
    print("  1. Review the generated formulae: git diff")
    print('  2. Commit and push: git add Formula/ && git commit -m "chore: update formulae to {release_tag}"')
    print("  3. Tag the release if needed")


if __name__ == "__main__":
    main()

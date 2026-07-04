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


# ── Configuration ─────────────────────────────────────────────────────────────

OWNER = "cpp-linter"
REPO = "clang-tools-static-binaries"
VERSIONS = [22, 21, 20, 19, 18]

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


# ── Checksum helpers ───────────────────────────────────────────────────────


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

    available = tools_for_version(ver)
    resource_tools = [t for t in available if t != PRIMARY_TOOL]

    # Human-readable description lists every shipped tool, primary first.
    tools_desc = ", ".join(available[:-1]) + ", and " + available[-1]

    lines: list[str] = []

    lines.append(f"class {class_name} < Formula")
    lines.append(f'  desc "Static binaries for {tools_desc}"')
    lines.append(f"  homepage \"https://github.com/{OWNER}/{REPO}\"")
    lines.append(f'  version "{ver}"')
    lines.append("")

    # ── ARM / Intel share the same resource layout, differing only by platform ──
    for on_block, platform in (("on_arm", "macos-arm64"), ("on_intel", "macos-amd64")):
        lines.append(f"  {on_block} do")
        lines.append(f'    url "{rel_url(PRIMARY_TOOL, ver, platform, release_tag)}"')
        lines.append(f'    sha256 "{sha(sha_map, PRIMARY_TOOL, ver, platform)}"')
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
    # Only smoke-test tools guaranteed present on every version; version-gated
    # tools may be absent and are skipped to keep the test valid across versions.
    test_tools = [t for t in always_available_tools() if t in available]
    lines.append("  test do")
    for tool in test_tools:
        lines.append(f'    system "#{{bin}}/{tool}", "--version"')
    lines.append("  end")
    lines.append("end")
    lines.append("")

    return "\n".join(lines)


# ── Individual tool formula ────────────────────────────────────────────────────


def generate_individual_formula(
    tool: str,
    version: int,
    release_tag: str,
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
    lines.append(f'  version "{ver}"')
    lines.append("")

    # ── ARM ──
    lines.append("  on_arm do")
    lines.append(f'    url "{rel_url(tool, ver, "macos-arm64", release_tag)}"')
    lines.append(f'    sha256 "{sha(sha_map, tool, ver, "macos-arm64")}"')
    lines.append("  end")
    lines.append("")

    # ── Intel ──
    lines.append("  on_intel do")
    lines.append(f'    url "{rel_url(tool, ver, "macos-amd64", release_tag)}"')
    lines.append(f'    sha256 "{sha(sha_map, tool, ver, "macos-amd64")}"')
    lines.append("  end")
    lines.append("")

    # ── Install method ──
    lines.append("  def install")
    lines.append(f'    bin.install Dir["{tool}-*"].first => "{tool}"')
    lines.append("  end")
    lines.append("")

    # ── Test ──
    lines.append("  test do")
    lines.append(f'    system "#{{bin}}/{tool}", "--version"')
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

    # Collect SHA-256 for every asset shipped by each version.
    sha_map: dict[str, str] = {}

    for ver in VERSIONS:
        for tool in tools_for_version(ver):
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
        for tool in tools_for_version(ver):
            formula_name = f"{tool}.rb" if is_latest else f"{tool}@{ver}.rb"
            formula_path = FORMULA_DIR / formula_name

            content = generate_individual_formula(tool, ver, release_tag, sha_map, is_latest)
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

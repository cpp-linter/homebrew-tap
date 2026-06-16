#!/usr/bin/env python3
"""
update-formula.py — Regenerate Homebrew formulae for clang-tools.

Usage:
    python3 scripts/update-formula.py <release-tag>

Example:
    python3 scripts/update-formula.py 2026.06.15-a56c0263

This script:
  1. Downloads SHA256 checksums for all tool binaries from the given release
  2. Regenerates Formula/clang-tools.rb (latest version)
  3. Regenerates Formula/clang-tools@<ver>.rb for each version (18-22)
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
PLATFORMS = ["macos-arm64", "macos-amd64"]

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


# ── Formula generation ─────────────────────────────────────────────────────────


def generate_formula(
    version: int,
    release_tag: str,
    sha_map: dict[str, str],
    is_latest: bool,
) -> str:
    """Generate the content of a Homebrew formula file."""
    ver = version
    formula_name = "clang-tools.rb" if is_latest else f"clang-tools@{ver}.rb"
    class_name = "ClangTools" if is_latest else f"ClangToolsAT{ver}"

    include_cleaner = ver >= 18

    tools_desc = "clang-format, clang-tidy, clang-query, clang-apply-replacements"
    if include_cleaner:
        tools_desc += ", and clang-include-cleaner"

    lines: list[str] = []

    def sha(tool: str, platform: str) -> str:
        key = asset_name(tool, ver, platform)
        return sha_map.get(key, "")

    def rel_url(tool: str, platform: str) -> str:
        return asset_url(tool, ver, platform, release_tag)

    lines.append(f"class {class_name} < Formula")
    lines.append(f'  desc "Static binaries for {tools_desc}"')
    lines.append(f"  homepage \"https://github.com/{OWNER}/{REPO}\"")
    lines.append(f'  version "{ver}"')
    lines.append("")

    # ── ARM ──
    lines.append("  on_arm do")
    lines.append(f'    url "{rel_url("clang-format", "macos-arm64")}"')
    lines.append(f'    sha256 "{sha("clang-format", "macos-arm64")}"')
    lines.append("")

    for tool in ["clang-tidy", "clang-query", "clang-apply-replacements"]:
        lines.append(f'    resource "{tool}" do')
        lines.append(f'      url "{rel_url(tool, "macos-arm64")}"')
        lines.append(f'      sha256 "{sha(tool, "macos-arm64")}"')
        lines.append("    end")
        lines.append("")

    if include_cleaner:
        lines.append('    resource "clang-include-cleaner" do')
        lines.append(f'      url "{rel_url("clang-include-cleaner", "macos-arm64")}"')
        lines.append(f'      sha256 "{sha("clang-include-cleaner", "macos-arm64")}"')
        lines.append("    end")
        lines.append("")

    lines.append("  end")
    lines.append("")

    # ── Intel ──
    lines.append("  on_intel do")
    lines.append(f'    url "{rel_url("clang-format", "macos-amd64")}"')
    lines.append(f'    sha256 "{sha("clang-format", "macos-amd64")}"')
    lines.append("")

    for tool in ["clang-tidy", "clang-query", "clang-apply-replacements"]:
        lines.append(f'    resource "{tool}" do')
        lines.append(f'      url "{rel_url(tool, "macos-amd64")}"')
        lines.append(f'      sha256 "{sha(tool, "macos-amd64")}"')
        lines.append("    end")
        lines.append("")

    if include_cleaner:
        lines.append('    resource "clang-include-cleaner" do')
        lines.append(f'      url "{rel_url("clang-include-cleaner", "macos-amd64")}"')
        lines.append(f'      sha256 "{sha("clang-include-cleaner", "macos-amd64")}"')
        lines.append("    end")
        lines.append("")

    lines.append("  end")
    lines.append("")

    # ── Install method ──
    lines.append("  def install")
    lines.append('    # Install the main binary (clang-format)')
    lines.append('    bin.install Dir["clang-format-*"].first => "clang-format"')
    lines.append("")
    lines.append("    # Install tool resources")
    lines.append("    %w[clang-tidy clang-query clang-apply-replacements clang-include-cleaner].each do |tool|")
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
    lines.append("  test do")
    lines.append('    system "#{bin}/clang-format", "--version"')
    lines.append('    system "#{bin}/clang-tidy", "--version"')
    lines.append('    system "#{bin}/clang-query", "--version"')
    lines.append('    system "#{bin}/clang-apply-replacements", "--version"')
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

    for ver in VERSIONS:
        for tool in TOOLS_ALL:
            for platform in PLATFORMS:
                name = asset_name(tool, ver, platform)
                url = asset_url(tool, ver, platform, release_tag)
                sha = sha256_of_url(url)
                if sha:
                    sha_map[name] = sha
                    print(f"  ✓ {name}")
                else:
                    print(f"  ✗ {name} (not found, skipping)")

        if ver >= 18:
            for tool in TOOLS_IC:
                for platform in PLATFORMS:
                    name = asset_name(tool, ver, platform)
                    url = asset_url(tool, ver, platform, release_tag)
                    sha = sha256_of_url(url)
                    if sha:
                        sha_map[name] = sha
                        print(f"  ✓ {name}")
                    else:
                        print(f"  ✗ {name} (not found, skipping)")

    print()
    print(":: Generating formulae ...")

    FORMULA_DIR.mkdir(parents=True, exist_ok=True)

    for i, ver in enumerate(VERSIONS):
        is_latest = (i == 0)
        formula_name = "clang-tools.rb" if is_latest else f"clang-tools@{ver}.rb"
        formula_path = FORMULA_DIR / formula_name

        content = generate_formula(ver, release_tag, sha_map, is_latest)
        formula_path.write_text(content)
        print(f"  ✓ {formula_name} written")

    print()
    print(f":: Done! Generated {len(list(FORMULA_DIR.glob('*.rb')))} formula files.")
    print(f"   Release tag: {release_tag}")
    print()
    print("Next steps:")
    print("  1. Review the generated formulae: git diff")
    print('  2. Commit and push: git add Formula/ && git commit -m "chore: update to {release_tag}"')
    print("  3. Tag the release if needed")


if __name__ == "__main__":
    main()

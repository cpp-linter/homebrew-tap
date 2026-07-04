<div align="center">

# cpp-linter Homebrew Tap

[![Test Formulae](https://github.com/cpp-linter/homebrew-tap/actions/workflows/test.yml/badge.svg)](https://github.com/cpp-linter/homebrew-tap/actions/workflows/test.yml)
[![Update Formula](https://github.com/cpp-linter/homebrew-tap/actions/workflows/update-formula.yml/badge.svg)](https://github.com/cpp-linter/homebrew-tap/actions/workflows/update-formula.yml)
[![cpp-linter hub](https://img.shields.io/badge/%F0%9F%8F%A0_cpp--linter_hub-%E2%86%90_home-22863a)](https://cpp-linter.github.io/)

Homebrew tap for [clang-tools-static-binaries](https://github.com/cpp-linter/clang-tools-static-binaries).

</div>

Provides pre-built static binaries for:

| Category | Tools |
|----------|-------|
| **Clang tools** | `clang-format`, `clang-tidy`, `clang-query`, `clang-apply-replacements`, `clang-scan-deps` |
| **LLVM utilities** | `llvm-cov`, `llvm-profdata`, `llvm-symbolizer` |
| **Extra** | `clang-include-cleaner` (LLVM 18+) |

All 9 tools are bundled in the `clang-tools` formula, or can be installed individually.
No compilation required — binaries are downloaded directly from GitHub Releases.

## Installation

```bash
# Add the tap
brew tap cpp-linter/tap
```

### Install all tools (bundle)

```bash
# Install the latest version (currently LLVM 22)
brew install clang-tools

# Install a specific version
brew install clang-tools@21
brew install clang-tools@20
brew install clang-tools@19
brew install clang-tools@18
```

### Install individual tools

Install only what you need:

```bash
# Latest versions
brew install clang-format              # code formatter
brew install clang-tidy                # linter / static analyzer
brew install clang-query               # AST query tool
brew install clang-apply-replacements  # apply clang-tidy fixes
brew install clang-include-cleaner     # remove unused headers (LLVM 18+)
brew install clang-scan-deps           # dependency scanner for modules
brew install llvm-cov                  # code coverage reporting
brew install llvm-profdata             # profile data tool
brew install llvm-symbolizer           # symbolizer for sanitizers / logs

# Specific older versions (append @<version>)
brew install clang-format@18
brew install clang-tidy@19
brew install clang-query@20
# ... etc.
```

## Usage

After installation, tools are available on your `PATH`:

```bash
clang-format --version
clang-tidy --version
clang-query --version
clang-apply-replacements --version
clang-include-cleaner --version   # LLVM 18+
clang-scan-deps --version
llvm-cov --version
llvm-profdata --version
llvm-symbolizer --version
```

## How It Works

Each formula downloads the pre-built static binaries from the
[cpp-linter/clang-tools-static-binaries](https://github.com/cpp-linter/clang-tools-static-binaries)
GitHub Releases matching your macOS architecture (ARM64 or x86_64).

The SHA-256 checksums are verified during installation.

### Bundle vs. individual formulas

| Formula | Installs |
|---|---|
| `clang-tools` / `clang-tools@<ver>` | **All 9 tools** |
| `clang-format` / `clang-format@<ver>` | Only `clang-format` |
| `clang-tidy` / `clang-tidy@<ver>` | Only `clang-tidy` |
| `clang-query` / `clang-query@<ver>` | Only `clang-query` |
| `clang-apply-replacements` / `clang-apply-replacements@<ver>` | Only `clang-apply-replacements` |
| `clang-include-cleaner` / `clang-include-cleaner@<ver>` | Only `clang-include-cleaner` (LLVM 18+) |
| `clang-scan-deps` / `clang-scan-deps@<ver>` | Only `clang-scan-deps` |
| `llvm-cov` / `llvm-cov@<ver>` | Only `llvm-cov` |
| `llvm-profdata` / `llvm-profdata@<ver>` | Only `llvm-profdata` |
| `llvm-symbolizer` / `llvm-symbolizer@<ver>` | Only `llvm-symbolizer` |

## Updating

```bash
brew update
brew upgrade clang-tools
```

To update a single tool:

```bash
brew upgrade clang-format
```

## Development

To update the formulae after a new release:

```bash
bash scripts/update-formula.sh <release-tag>
```

Example:
```bash
bash scripts/update-formula.sh 2026.06.15-a56c0263
```

This will regenerate all `Formula/*.rb` files (both bundle and individual tool
formulae) with the correct URLs and SHA-256 checksums.

There is also a GitHub Actions workflow (`.github/workflows/update-formula.yml`)
that runs automatically when a new release is published in the upstream repo.

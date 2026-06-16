# cpp-linter Homebrew Tap

Homebrew tap for [clang-tools-static-binaries](https://github.com/cpp-linter/clang-tools-static-binaries).

Provides pre-built static binaries for:
- **clang-format**
- **clang-tidy**
- **clang-query**
- **clang-apply-replacements**
- **clang-include-cleaner** (LLVM 18+)

No compilation required — binaries are downloaded directly from GitHub Releases.

## Installation

```bash
# Add the tap
brew tap cpp-linter/tap

# Install the latest version (currently LLVM 22)
brew install clang-tools

# Install a specific version
brew install clang-tools@22
brew install clang-tools@21
brew install clang-tools@20
brew install clang-tools@19
brew install clang-tools@18
```

## Usage

After installation, all tools are available on your `PATH`:

```bash
clang-format --version
clang-tidy --version
clang-query --version
clang-apply-replacements --version
clang-include-cleaner --version   # LLVM 18+
```

## How It Works

Each formula downloads the pre-built static binaries from the
[cpp-linter/clang-tools-static-binaries](https://github.com/cpp-linter/clang-tools-static-binaries)
GitHub Releases matching your macOS architecture (ARM64 or x86_64).

The SHA-256 checksums are verified during installation.

## Updating

```bash
brew update
brew upgrade clang-tools
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

This will regenerate all `Formula/clang-tools*.rb` files with
the correct URLs and SHA-256 checksums.

There is also a GitHub Actions workflow (`.github/workflows/update-formula.yml`)
that runs automatically when a new release is published in the upstream repo.

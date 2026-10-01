# homebrew-tap

[![ci](https://img.shields.io/github/actions/workflow/status/cpp-linter/homebrew-tap/test.yml?branch=main&label=ci&labelColor=454a63)](https://github.com/cpp-linter/homebrew-tap/actions/workflows/test.yml)
[![part of cpp-linter](https://img.shields.io/badge/part%20of-cpp--linter-ffc20a?labelColor=454a63)](https://cpp-linter.github.io/)

This Homebrew tap installs `clang-format`, `clang-tidy` and other LLVM tools on macOS from pre-built [static binaries](https://github.com/cpp-linter/clang-tools-static-binaries), without building LLVM.

[Website](https://cpp-linter.github.io/) · [Get started](https://cpp-linter.github.io/getting-started/#just-the-clang-tools) · [Discussions](https://github.com/orgs/cpp-linter/discussions)

## Quick start

```bash
brew install cpp-linter/tap/clang-format@21
```

Install with the full `cpp-linter/tap/<formula>` name. Homebrew adds the tap and
trusts the formula you named, so no other step is needed.

> [!IMPORTANT]
> Short names such as `brew install clang-tidy` need `brew tap cpp-linter/tap`
> **and** `brew trust cpp-linter/tap` first: since Homebrew 6, formulae from
> third-party taps are not loaded until they are trusted. `clang-format` is also
> a Homebrew core formula, so `brew install clang-format` installs that one
> instead of this tap's. Write `cpp-linter/tap/clang-format`.

## Usage

All 9 tools are bundled in the `clang-tools` formula, or can be installed individually:

```bash
brew install cpp-linter/tap/clang-tools               # all 9 tools below
brew install cpp-linter/tap/clang-format              # code formatter
brew install cpp-linter/tap/clang-tidy                # linter / static analyzer
brew install cpp-linter/tap/clang-query               # AST query tool
brew install cpp-linter/tap/clang-apply-replacements  # apply clang-tidy fixes
brew install cpp-linter/tap/clang-include-cleaner     # remove unused headers
brew install cpp-linter/tap/clang-scan-deps           # dependency scanner for modules
brew install cpp-linter/tap/llvm-cov                  # code coverage reporting
brew install cpp-linter/tap/llvm-profdata             # profile data tool
brew install cpp-linter/tap/llvm-symbolizer           # symbolizer for sanitizers / logs
```

Append `@<version>` for a specific LLVM version, for example `cpp-linter/tap/clang-tools@21`.

## Updating

```bash
brew update
brew upgrade cpp-linter/tap/clang-tools
```

To update a single tool:

```bash
brew upgrade cpp-linter/tap/clang-format
```

A formula without `@<version>` moves to the next LLVM major version when this tap adds one,
so `brew upgrade` can change its major version. `@<version>` formulae stay on theirs.

## Supported versions

The formulae cover LLVM 19 to 23, for macOS only. Formulae without a version suffix install
LLVM 23; `@22`, `@21`, `@20` and `@19` install those versions.

Each formula downloads the pre-built static binaries from the
[cpp-linter/clang-tools-static-binaries](https://github.com/cpp-linter/clang-tools-static-binaries)
GitHub Releases matching your macOS architecture (ARM64 or x86_64).

The SHA-256 checksums are verified during installation.

## Limitations

Every formula installs its tools under their plain names, such as `clang-format`, and Homebrew
links only one formula's `clang-format` into its `bin` directory. If another formula already
links it (another `@<version>`, `clang-tools`, or Homebrew core's `clang-format`), the new one is
installed but not linked. Switch with `brew unlink` on the other formula and `brew link` on this
one, or run the one that is not linked by its full path:

```bash
"$(brew --prefix cpp-linter/tap/clang-format@21)/bin/clang-format" --version
```

`cpp-linter/tap/clang-format` and Homebrew core's `clang-format` cannot be installed at the same
time, because they have the same name.

## Maintaining this tap

The [Update Formula](https://github.com/cpp-linter/homebrew-tap/actions/workflows/update-formula.yml)
workflow runs daily and opens a pull request when a new
[clang-tools-static-binaries release](https://github.com/cpp-linter/clang-tools-static-binaries/releases)
changes the formulae. To update them by hand:

```bash
bash scripts/update-formula.sh <release-tag>
```

This will regenerate all `Formula/*.rb` files (both bundle and individual tool
formulae) with the correct URLs and SHA-256 checksums.

The LLVM versions come from `VERSIONS` in `scripts/update-formula.py`. The script never deletes
formulae, so remove the files of a version that leaves `VERSIONS`.

## Contributing

See the [contributing guide](https://github.com/cpp-linter/.github/blob/main/CONTRIBUTING.md) and report problems in [issues](https://github.com/cpp-linter/homebrew-tap/issues).

## License

The formulae and scripts in this repository are released under the
[MIT License](https://github.com/cpp-linter/homebrew-tap/blob/main/LICENSE). The tools they install
are built from LLVM, which is under the
[Apache License v2.0 with LLVM Exceptions](https://llvm.org/LICENSE.txt).

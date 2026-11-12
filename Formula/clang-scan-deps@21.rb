class ClangScanDepsAT21 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-scan-deps-21_macos-arm64"
    sha256 "7ead94bea7699a086b852efb36699a10319b7a52926fbba926e063dab73c2da6"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-scan-deps-21_macos-amd64"
    sha256 "0e5ccd9ab044579ffee8e93c045fd42136a9180544fd5c17dff458aba9f471b7"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system bin/"clang-scan-deps", "--version"
  end
end

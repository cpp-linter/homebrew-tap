class ClangScanDeps < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.6"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-scan-deps-23_macos-arm64"
    sha256 "cc90af53658dbe9152d2afc07665c4feb4c4824657530e76b70c04511dd4b4db"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-scan-deps-23_macos-amd64"
    sha256 "93d37ee5c76b38052148166ea3477a01d8213a1c10377d53e48aee5fa4aea5a9"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system bin/"clang-scan-deps", "--version"
  end
end

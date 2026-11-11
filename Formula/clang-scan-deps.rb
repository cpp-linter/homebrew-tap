class ClangScanDeps < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.5"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-scan-deps-23_macos-arm64"
    sha256 "26b30a40f9780e02da75c93a3b44560403019395ddb3ca12777f1818d822ebb4"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-scan-deps-23_macos-amd64"
    sha256 "da9e95a9c9cf59101340c75657e8106dfb39b85c302fa708e9a7d14e9a52a2f5"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system bin/"clang-scan-deps", "--version"
  end
end

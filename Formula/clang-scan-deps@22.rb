class ClangScanDepsAT22 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8/clang-scan-deps-22_macos-arm64"
    sha256 "1ae23f5c5dc115f8360a804b9378d19826c86a82145d3869c9e17999e534ace5"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8/clang-scan-deps-22_macos-amd64"
    sha256 "d74de32f7ed031d47eeb8a3ca8f62f1257e40942992882713ee4b42889ec6a9c"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

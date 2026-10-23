class ClangScanDepsAT20 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-scan-deps-20_macos-arm64"
    sha256 "90994fd8661a847ed686b24fdf9640b6d94e3ed68e9c43b9a0493a0adf57fb77"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-scan-deps-20_macos-amd64"
    sha256 "0a404e8e47fbe9ac28785229e5d8e5968b182602c3500fc239df87f1388a8e36"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

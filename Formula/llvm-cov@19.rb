class LlvmCovAT19 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-cov-19_macos-arm64"
    sha256 "de2eb0cf0a8bf02d12754830a58aafbb015a40b62cfc0a0a31c5bfd0dd85409e"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-cov-19_macos-amd64"
    sha256 "2f80f1d35d6624de876956aa2d19ef40661f5b922565fbce5d50d177328a4f61"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

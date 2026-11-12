class LlvmCovAT19 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-cov-19_macos-arm64"
    sha256 "be168327bd9822cda968e737c5781aba63bad9dce5fa5ddeac56668f4389b977"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-cov-19_macos-amd64"
    sha256 "2f80f1d35d6624de876956aa2d19ef40661f5b922565fbce5d50d177328a4f61"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system bin/"llvm-cov", "--version"
  end
end

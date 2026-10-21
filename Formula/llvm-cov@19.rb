class LlvmCovAT19 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-2/llvm-cov-19_macos-arm64"
    sha256 "e57e97d672318096e1bbc68c549773aa8d212579e7fcff88e286c16c6b0fda4e"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-2/llvm-cov-19_macos-amd64"
    sha256 "b36dd4b1aeafbd26b0f32b8afe120aded6874fa6620fcac6bbdd5d4a55c00efb"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

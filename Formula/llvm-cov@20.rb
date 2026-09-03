class LlvmCovAT20 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-20_macos-arm64"
    sha256 "0a0f96f6a34217e4ead674b3a5a8fd3ddbe59dcfd490f9c8a82606c63d863ebf"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-20_macos-amd64"
    sha256 "72588b0ef696a7d61d74bbc04f3317c975132fb92552f4a8afb1c6a236de3925"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

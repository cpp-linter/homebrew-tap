class LlvmCovAT20 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-2/llvm-cov-20_macos-arm64"
    sha256 "2bd1bbd7b96a62db9470953651966969f501af5a00f916cb73ac2a870061b8ca"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-2/llvm-cov-20_macos-amd64"
    sha256 "72588b0ef696a7d61d74bbc04f3317c975132fb92552f4a8afb1c6a236de3925"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

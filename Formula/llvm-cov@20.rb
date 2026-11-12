class LlvmCovAT20 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/llvm-cov-20_macos-arm64"
    sha256 "2be568cefbe338d2225ce18527172eb8e3a4b316f9c1f4d7e96b6de1360da2c9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/llvm-cov-20_macos-amd64"
    sha256 "9da50e15053a6b618a5cf09ea6e8c197f7b2a500542e1be618c8fb4dabfccb8e"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system bin/"llvm-cov", "--version"
  end
end

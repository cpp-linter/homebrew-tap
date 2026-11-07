class LlvmCov < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.5"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/llvm-cov-23_macos-arm64"
    sha256 "ddf0db4d72728a141213336309bfb17725777b3612ec552e33911c3ecb29930e"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/llvm-cov-23_macos-amd64"
    sha256 "4dfdfce39510f2b6af5afd3e00c61aa9b2013c72a9bb4149e194dba0fc75eb17"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

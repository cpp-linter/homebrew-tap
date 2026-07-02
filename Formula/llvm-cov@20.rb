class LlvmCovAT20 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-20_macos-arm64"
    sha256 "09bcf212d7e1f903cbd4ec807f92d60322afa6d8778a6168a4283b07bd2cfd24"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-20_macos-amd64"
    sha256 "d31dcd99eddd7f3bea7e0cc37afa45649e7b06bfae212bb96f832364b86c31c5"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

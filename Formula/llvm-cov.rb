class LlvmCov < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-22_macos-arm64"
    sha256 "92caf2fd5cae445e5caea096b221d8113d04344b9d8477477827dd3fcd0d8d10"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-22_macos-amd64"
    sha256 "80f83dcb888b4e96f784dc135e7c979cdd5903526adc4b6eaada69aeefb7645f"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

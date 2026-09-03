class LlvmCovAT19 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-19_macos-arm64"
    sha256 "4787febf15cd5eff20e1d5b689cb1ac95b4dc54364189fe9cc7905609c30596f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-19_macos-amd64"
    sha256 "b36dd4b1aeafbd26b0f32b8afe120aded6874fa6620fcac6bbdd5d4a55c00efb"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

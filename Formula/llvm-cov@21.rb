class LlvmCovAT21 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-2/llvm-cov-21_macos-arm64"
    sha256 "1c7ad2dfebb6c76034541835d8bb88ca7ef2db8050ac61f1305153420d93f933"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-2/llvm-cov-21_macos-amd64"
    sha256 "3c900a073cfcfd7d638f63fc6fe5ea9a3ff972feeabb695a11b3959d6e910e18"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

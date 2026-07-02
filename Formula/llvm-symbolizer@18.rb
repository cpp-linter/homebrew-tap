class LlvmSymbolizerAT18 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-18_macos-arm64"
    sha256 "0b83466d36c4ecb605132274e157e9fc76827eb457b8421e26226d2aaf3192f9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-18_macos-amd64"
    sha256 "a7bd08ed82ee592b4e924e63786e398aa0c20a43647cde555ec79be745b92782"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

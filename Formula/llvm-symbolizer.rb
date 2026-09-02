class LlvmSymbolizer < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-22_macos-arm64"
    sha256 "f993c8570d26f73af65fa8c09de75d2f8856a14e9a4526a940f3ab0a86538020"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-22_macos-amd64"
    sha256 "c1adc3a89f9d2f02f986ff75555d6628e74a5d3cc8a090ddd5e4c6b7c96827fb"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

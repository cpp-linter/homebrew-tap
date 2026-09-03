class LlvmSymbolizer < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-23_macos-arm64"
    sha256 "70d14f0955e30d0a81416e4c2d5b8f80fbdc2dd11128abb5afba85fca5d6c9fb"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-23_macos-amd64"
    sha256 "6114fd946b518e5b638d437eb74d237a9b8b6bb7e0aaee1bce9090114a4d9cd1"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

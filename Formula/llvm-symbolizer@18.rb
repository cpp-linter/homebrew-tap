class LlvmSymbolizerAT18 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-18_macos-arm64"
    sha256 "0b83466d36c4ecb605132274e157e9fc76827eb457b8421e26226d2aaf3192f9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-18_macos-amd64"
    sha256 "a8471ca8a5e9230e4410105e06be55a55907098d3618fd94f283869513dc4e62"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

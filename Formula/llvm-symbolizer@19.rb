class LlvmSymbolizerAT19 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-symbolizer-19_macos-arm64"
    sha256 "3c52856993e8b9b6ba5ac97dbad8bed16ec9e0c21f498cc9bfd5d26aff54a745"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-symbolizer-19_macos-amd64"
    sha256 "cc6ed0b8cf2402934b3083a36e72a2962d01d61243511bb1c2332617b442ad0c"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system bin/"llvm-symbolizer", "--version"
  end
end

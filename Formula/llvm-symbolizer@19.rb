class LlvmSymbolizerAT19 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-symbolizer-19_macos-arm64"
    sha256 "7cd00b9c39bb264259a29a26c4e6a76c04b2f3867b2a0bd8982ee9e982f1c5f5"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-symbolizer-19_macos-amd64"
    sha256 "cc6ed0b8cf2402934b3083a36e72a2962d01d61243511bb1c2332617b442ad0c"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

class LlvmSymbolizerAT20 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-2/llvm-symbolizer-20_macos-arm64"
    sha256 "1883010613bbe0ca055edc8c0442a1d5d8691f45828557775400e38e167be1e9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-2/llvm-symbolizer-20_macos-amd64"
    sha256 "e36634644f91b809cab97b3c8b8f030d36e4af27d30ea4ef75be669233e87993"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

class LlvmSymbolizerAT22 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-symbolizer-22_macos-arm64"
    sha256 "89d961979c4eed8228c51fbfb77bdaeb467958f738ff000c688a3b96dfe5662e"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-symbolizer-22_macos-amd64"
    sha256 "0ce054ccfc5c29ff79786dbfe5dab4c755cedebe5c85ed2a930e98a44e3394d7"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system bin/"llvm-symbolizer", "--version"
  end
end

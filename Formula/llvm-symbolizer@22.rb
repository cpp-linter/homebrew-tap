class LlvmSymbolizerAT22 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8/llvm-symbolizer-22_macos-arm64"
    sha256 "83996f38a9c356dd6533ec2a1cb1b5761807e3febf8f00846534b38ead7443a7"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8/llvm-symbolizer-22_macos-amd64"
    sha256 "0ce054ccfc5c29ff79786dbfe5dab4c755cedebe5c85ed2a930e98a44e3394d7"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

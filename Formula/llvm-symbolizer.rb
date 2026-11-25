class LlvmSymbolizer < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.6"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-symbolizer-23_macos-arm64"
    sha256 "6d309c7503c682a2a69110dda7f6183cfb38eba996ee289a6dccc8c15f08987b"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-symbolizer-23_macos-amd64"
    sha256 "22558db5ef9b10ebe65bdc9aede9822631ed5240362b3e15d08421c599bb351c"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system bin/"llvm-symbolizer", "--version"
  end
end

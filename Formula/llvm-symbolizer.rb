class LlvmSymbolizer < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.5"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/llvm-symbolizer-23_macos-arm64"
    sha256 "276859345c07418b1d2a360ca1c102cbf89736c39c9aa85c284067ed66673083"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/llvm-symbolizer-23_macos-amd64"
    sha256 "d334f32b5e611888805accefebb273b4a4ce8fff353581c4117196d72488605b"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system bin/"llvm-symbolizer", "--version"
  end
end

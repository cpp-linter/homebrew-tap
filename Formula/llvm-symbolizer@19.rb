class LlvmSymbolizerAT19 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-19_macos-arm64"
    sha256 "7d8ee2da65742ac177e19c9b14053fce6de0598e1271f9c27f67b2a150daf86c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-19_macos-amd64"
    sha256 "6ae448fa0fb709ffd91e4b2a7cadac89b29c9251b27534342034e9fb856a6dc4"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

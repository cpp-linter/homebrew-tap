class LlvmSymbolizer < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-22_macos-arm64"
    sha256 "9cc277bcdf09a4e256a99626eb6a37152c1a71d4572faa9ec84dcc5cf637d69b"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-22_macos-amd64"
    sha256 "a1becb5e481737d8e6ff75d9394896439a0ad896604526f21c7696b5b919e6a4"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

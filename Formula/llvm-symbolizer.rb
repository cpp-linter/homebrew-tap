class LlvmSymbolizer < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.3-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-3/llvm-symbolizer-23_macos-arm64"
    sha256 "760dd07acd802911207f55ecda190ee1b9b5a8f7ea96a7976604a52486c63103"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-3/llvm-symbolizer-23_macos-amd64"
    sha256 "12d81b9f97a494fecadac7868f10d3f4b3f3e909e402ff1ed643a58fd6409613"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

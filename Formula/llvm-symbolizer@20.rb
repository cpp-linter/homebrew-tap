class LlvmSymbolizerAT20 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/llvm-symbolizer-20_macos-arm64"
    sha256 "287635bad4c86ce29215aa5441501718930e83dc5ddceea4ede8fa658824beca"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/llvm-symbolizer-20_macos-amd64"
    sha256 "55366c0093442d67606fdef7ab9f9636c8c32dcb2da81fc656a65af759e0d0a9"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system bin/"llvm-symbolizer", "--version"
  end
end

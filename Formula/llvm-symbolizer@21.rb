class LlvmSymbolizerAT21 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/llvm-symbolizer-21_macos-arm64"
    sha256 "26029816ef5ba50c52c7e2e18f2e90e716f8fab614652852a9d8a1c843e7cccc"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/llvm-symbolizer-21_macos-amd64"
    sha256 "1223dfc69af83bd02ea0c1704b22812e46c0503fc95cb63f27900f8c8fc960c3"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

class LlvmSymbolizerAT20 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0/llvm-symbolizer-20_macos-arm64"
    sha256 "a9a279d2b2093360cbfe687689f27d507fc88eac5301f5216847cce666c4d925"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0/llvm-symbolizer-20_macos-amd64"
    sha256 "e36634644f91b809cab97b3c8b8f030d36e4af27d30ea4ef75be669233e87993"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

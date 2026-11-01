class LlvmSymbolizer < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-symbolizer-23_macos-arm64"
    sha256 "7e2bcc0800665716cf082b3a88ceed8112bcdd0519d24ada09a7e3b3e9ad1530"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-symbolizer-23_macos-amd64"
    sha256 "1939cf404a863b77789b474089f995b264c2360edf1f7aaeb26da36af277e8cc"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

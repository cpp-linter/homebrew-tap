class LlvmProfdataAT20 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/llvm-profdata-20_macos-arm64"
    sha256 "93caf04aaa045d87baa8d2992b6f848589bcb193d7d48fe5106ef68d6941f01a"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/llvm-profdata-20_macos-amd64"
    sha256 "56550da66d2fc76b8bea1da598242dffc8e0abebe03ac6ff9fd51942139380bc"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

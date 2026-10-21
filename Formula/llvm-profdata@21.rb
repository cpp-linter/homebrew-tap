class LlvmProfdataAT21 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-2/llvm-profdata-21_macos-arm64"
    sha256 "2c2312b5137249a27699da356513d5df9953312f3a1154f335479d2e00b4e272"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-2/llvm-profdata-21_macos-amd64"
    sha256 "21ee4e3a139aa5d9b011a72c85a4174012198e438be0b25c5d08fc1c115b412d"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

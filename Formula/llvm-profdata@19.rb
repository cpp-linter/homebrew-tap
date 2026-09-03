class LlvmProfdataAT19 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-19_macos-arm64"
    sha256 "93019ea7380e16cdeb38ede95707fdfbbbde18d5f375e3a516b7525ac7996efc"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-19_macos-amd64"
    sha256 "c8e02ea59781e6b053b358dfa76efab5fedca3ee2e216785c4aae157d6f5e072"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

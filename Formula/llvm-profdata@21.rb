class LlvmProfdataAT21 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-21_macos-arm64"
    sha256 "a79833fab330c39763c0c5b99101c21970b75686823e13837ebfe8a302e72c8d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-21_macos-amd64"
    sha256 "21ee4e3a139aa5d9b011a72c85a4174012198e438be0b25c5d08fc1c115b412d"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

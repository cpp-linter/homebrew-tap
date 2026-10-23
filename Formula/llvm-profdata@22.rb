class LlvmProfdataAT22 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-3/llvm-profdata-22_macos-arm64"
    sha256 "906a2bd0634a1f4337b879542c4a3974f8d6ba86fec40af7e6fc11c9d904d3a9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-3/llvm-profdata-22_macos-amd64"
    sha256 "b5acc4f103418298f9ba656c9b1283bba4c7bfd4825e2b09fd07b96344bae50b"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

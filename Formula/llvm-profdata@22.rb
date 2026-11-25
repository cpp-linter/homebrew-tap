class LlvmProfdataAT22 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-profdata-22_macos-arm64"
    sha256 "9e433136e00eb3a946dd5515aee0885515cf938e001af65f7b98c4836e359bba"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-profdata-22_macos-amd64"
    sha256 "b5acc4f103418298f9ba656c9b1283bba4c7bfd4825e2b09fd07b96344bae50b"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system bin/"llvm-profdata", "--version"
  end
end

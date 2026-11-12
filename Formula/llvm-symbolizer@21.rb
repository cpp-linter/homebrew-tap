class LlvmSymbolizerAT21 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/llvm-symbolizer-21_macos-arm64"
    sha256 "3be0bd279b69d553c0194239e9b9a223cc700e1c5e66255b86e2edc84e290bf1"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/llvm-symbolizer-21_macos-amd64"
    sha256 "2d2546a83ae850d81e39764da842dfe4028eb0323cad78b3ff9bee2490de709c"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system bin/"llvm-symbolizer", "--version"
  end
end

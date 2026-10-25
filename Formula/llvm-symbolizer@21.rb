class LlvmSymbolizerAT21 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/llvm-symbolizer-21_macos-arm64"
    sha256 "3e61cf7b7e5258d9d27685c8e6a3ff7e130198afd3b883abee492dff4432d4c3"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/llvm-symbolizer-21_macos-amd64"
    sha256 "2d2546a83ae850d81e39764da842dfe4028eb0323cad78b3ff9bee2490de709c"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

class LlvmSymbolizerAT19 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-19_macos-arm64"
    sha256 "fc28992bfae02bfc768ec362a63d33a261a7d0f4adb9b70c54389aab50186388"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-19_macos-amd64"
    sha256 "40fc50b8d7d084ce047fa3cb72535b3d913faf23e2afa4669d7710e6d013ad1d"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

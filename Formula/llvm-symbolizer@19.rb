class LlvmSymbolizerAT19 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/llvm-symbolizer-19_macos-arm64"
    sha256 "aa29b7dea4214a766ca8d1d95059b5c1d6d7a2df5acff44eb056c62d4e2a42aa"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/llvm-symbolizer-19_macos-amd64"
    sha256 "40fc50b8d7d084ce047fa3cb72535b3d913faf23e2afa4669d7710e6d013ad1d"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

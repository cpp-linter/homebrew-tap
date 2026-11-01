class LlvmProfdata < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-profdata-23_macos-arm64"
    sha256 "b60220e1873ee76144678894eeb280f4046f78cb72a437bdb2b8b37c8c5b0657"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-profdata-23_macos-amd64"
    sha256 "d794db733b5103c7b966a39f57b77e20f4d2960636465560092cf185855a76ce"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

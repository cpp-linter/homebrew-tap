class LlvmProfdata < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-23_macos-arm64"
    sha256 "9498deaadd1515da350e3f00e464d453d054c4f7cd7423806f7b14a905692057"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-23_macos-amd64"
    sha256 "bd68207b13f20ca2830d8c100ff0d80f0e48b3b96b4114d23719fb861d26487b"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

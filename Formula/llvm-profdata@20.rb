class LlvmProfdataAT20 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-20_macos-arm64"
    sha256 "b75697cac8be3d08daae9665229ca134306cf375617ab0739f9f8ade22a19389"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-20_macos-amd64"
    sha256 "56550da66d2fc76b8bea1da598242dffc8e0abebe03ac6ff9fd51942139380bc"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

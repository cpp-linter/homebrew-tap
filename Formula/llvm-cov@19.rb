class LlvmCovAT19 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-19_macos-arm64"
    sha256 "b517989777d8877f81f2ae2414f9ed15e1d6868862198d3a20bf7638ce9b8bc3"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-19_macos-amd64"
    sha256 "4c174d947dad3c9e1da25ba9064e1cd26247b8af8cf548eb58874e86a5a77c9e"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

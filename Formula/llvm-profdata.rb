class LlvmProfdata < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.6"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-profdata-23_macos-arm64"
    sha256 "f2c9ea42fcf98e5605c9f16ac09bd89279a84cb1d2544848627816bf73ac7601"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-profdata-23_macos-amd64"
    sha256 "e7bb0cddb424a7f61804b12bfc2f12f7c6f6624c802d5437159f55a79755ea06"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system bin/"llvm-profdata", "--version"
  end
end

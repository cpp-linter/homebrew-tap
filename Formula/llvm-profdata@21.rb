class LlvmProfdataAT21 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/llvm-profdata-21_macos-arm64"
    sha256 "7bafc64b1ab82279c838a642236435d9054d174cb41b48636a98ce9ad67f5e97"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/llvm-profdata-21_macos-amd64"
    sha256 "1414c83e5172e0eb82051b53b178bebee909253f974f1c4b3c73a7b4db8edc2b"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system bin/"llvm-profdata", "--version"
  end
end

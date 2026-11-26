class LlvmProfdataAT19 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-profdata-19_macos-arm64"
    sha256 "6dc31d84a41160cb216219a5c2ff4100bfc5d2d868740fb0dfdcf2d68bdb4f65"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-profdata-19_macos-amd64"
    sha256 "b8929ec931e19863970c247513ba64c62bde2bf5eae9b0852c5e0dc44f2cc8ee"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system bin/"llvm-profdata", "--version"
  end
end

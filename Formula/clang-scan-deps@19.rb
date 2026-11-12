class ClangScanDepsAT19 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-scan-deps-19_macos-arm64"
    sha256 "055beadddf88532a71c5f7630c66e9277f538442f21c66b8a5d8e934a4d48385"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-scan-deps-19_macos-amd64"
    sha256 "34040c5de87cab745942ce9679ecd0ff890b925b88a767b8ff0ac1f10a383d15"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system bin/"clang-scan-deps", "--version"
  end
end

class ClangScanDepsAT19 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-scan-deps-19_macos-arm64"
    sha256 "25c28a06304d513647d86ca782efe87eea88418a2434b4104f1971c0c95a3759"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-scan-deps-19_macos-amd64"
    sha256 "34040c5de87cab745942ce9679ecd0ff890b925b88a767b8ff0ac1f10a383d15"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

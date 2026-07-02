class ClangScanDepsAT21 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-21_macos-arm64"
    sha256 "f9e15ea255c49bf7a5161c2cf6da424258ca20262a272423dae0eecb318a8cbd"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-21_macos-amd64"
    sha256 "50ee5f5944e0461da6f1528f18fb5f016d9f7c3d2c46dc35eae3c9a4b09833da"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

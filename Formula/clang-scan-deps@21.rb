class ClangScanDepsAT21 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-21_macos-arm64"
    sha256 "f9e15ea255c49bf7a5161c2cf6da424258ca20262a272423dae0eecb318a8cbd"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-21_macos-amd64"
    sha256 "f3a485d53b2a2441e1719f26e8a5f9d631d35e3ba791f326e20f62b18c28b98a"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

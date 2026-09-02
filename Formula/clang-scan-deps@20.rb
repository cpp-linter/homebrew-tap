class ClangScanDepsAT20 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-20_macos-arm64"
    sha256 "0a9ee8a969ed67c924d9e2b2f5f1c75311265184467249d7016c9260fc5340ae"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-20_macos-amd64"
    sha256 "0a404e8e47fbe9ac28785229e5d8e5968b182602c3500fc239df87f1388a8e36"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

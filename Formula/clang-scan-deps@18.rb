class ClangScanDepsAT18 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-18_macos-arm64"
    sha256 "a71f6e94d694012135beff4f540a4c82b7da9b84a94b35b73a63a5390b6737cc"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-18_macos-amd64"
    sha256 "9f99b7e892ded95ebce0b5ca3932773eaae82a2f52ff95a8a89359a7861db02b"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

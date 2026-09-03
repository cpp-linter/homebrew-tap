class ClangScanDepsAT22 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-22_macos-arm64"
    sha256 "67d0ba17dffcb50b1c8ffdc9316dac4333549862357b9e90d2dee8bcc084a968"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-22_macos-amd64"
    sha256 "a161cdb08b46557ad18a539181ea0465372d41565aa21dd91270f91aa3e21569"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

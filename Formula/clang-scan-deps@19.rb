class ClangScanDepsAT19 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-19_macos-arm64"
    sha256 "48da97805b3963f6bce1f907c76d308b8425cb20b93c8c244ff3402b8f9767f8"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-19_macos-amd64"
    sha256 "0e39e0c3d0dcc57fde84af9a12ff3fd87a6e77f6e0ca7010c99b1b3f084b286f"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

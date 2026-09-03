class ClangScanDeps < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-23_macos-arm64"
    sha256 "e171e750018fe8957bec33f8bb02b572cd0e785ad182746cfb376cc8180c9887"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-23_macos-amd64"
    sha256 "e7e26dfe978948aa6691904d88229f31ca299411d4e9640b2d13b937a056248d"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

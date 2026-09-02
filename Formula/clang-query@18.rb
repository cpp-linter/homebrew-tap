class ClangQueryAT18 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-18_macos-arm64"
    sha256 "4bc6e012f2c0b6df79c69762ba6294630cfa5466fdf6554d67f70570e2f8d5fa"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-18_macos-amd64"
    sha256 "1242c5308a2f6874377e930fca5c513297ac996229d2c779564534d4f78dbfc5"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

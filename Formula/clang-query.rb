class ClangQuery < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-22_macos-arm64"
    sha256 "c947b5746cf2165aac01082926542c2bf7c5da01cf6e85db0bc660786ef64f12"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-22_macos-amd64"
    sha256 "b7137c6a00b6c91d48500291d2d6bb22d62eea9b1a6817577590fcff2db7d0c6"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

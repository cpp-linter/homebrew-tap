class ClangQuery < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-22_macos-arm64"
    sha256 "56b07cd7337f016fa8fb335a8ad10ee5d0071dafc25562ac4f90d3561dff6cb1"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-22_macos-amd64"
    sha256 "7c34a3437c8c06f6592f8f33ed89d37e9427fd6fd6cef37f760ae57d4f46ff8e"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

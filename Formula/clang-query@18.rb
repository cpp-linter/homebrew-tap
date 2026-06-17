class ClangQueryAT18 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-18_macos-arm64"
    sha256 "691574dcf0f233462a10f69309184bead745a68e44d3d586d90122c125d756e3"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-18_macos-amd64"
    sha256 "1715f669c2e6bc1599b80f6253b1f0a356f212457d0eaeaf42433c480c875a4f"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

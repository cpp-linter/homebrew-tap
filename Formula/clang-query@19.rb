class ClangQueryAT19 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-19_macos-arm64"
    sha256 "2ed20048116427bfe06cc280c6e4068e245560f48adbf214ab87265387d7ab4a"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-19_macos-amd64"
    sha256 "ffefb5b76117041149619704ad3a2946c42d5263a65f6495967109918db5ab95"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

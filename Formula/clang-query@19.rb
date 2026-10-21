class ClangQueryAT19 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-2/clang-query-19_macos-arm64"
    sha256 "4c4eaaa53e580516cb06aeb473c2d6799164602cc1f0b5c9c08f5161a3f5d865"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-2/clang-query-19_macos-amd64"
    sha256 "ffefb5b76117041149619704ad3a2946c42d5263a65f6495967109918db5ab95"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

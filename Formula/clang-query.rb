class ClangQuery < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-query-23_macos-arm64"
    sha256 "a9cc62332b6865b3d022f8a7610acff8db9956fccb59d847b482c1cccec7e90f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-query-23_macos-amd64"
    sha256 "9559f339e880232a2646cacd42d6076afa524a1d470fe8bca75ebc9cdf399042"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

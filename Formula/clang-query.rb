class ClangQuery < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3/clang-query-23_macos-arm64"
    sha256 "038c36c249bb9353fa652383b402f1f3287e21ac256fe4762c8b33b3755d7342"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3/clang-query-23_macos-amd64"
    sha256 "c5660968ca298455d94a5eda512061756eb6c31d0397d63bd48b1d7bb72c41e7"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

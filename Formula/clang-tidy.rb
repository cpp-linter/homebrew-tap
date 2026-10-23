class ClangTidy < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.3-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-3/clang-tidy-23_macos-arm64"
    sha256 "30df9e18d61c9947004adaf5e6dfa40067818ebe9e2af8b4b8ac8c8515b1f59d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-3/clang-tidy-23_macos-amd64"
    sha256 "8d82c0da4bd4fad8b02b9575d18cce72aa09fbe5aba0e076970882c4ca11d61c"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

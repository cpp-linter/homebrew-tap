class ClangQueryAT19 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-query-19_macos-arm64"
    sha256 "f6503fd253c002aa70363d2dfe8d94291aff0c81495bcb9bf2efbfbdb55604ff"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-query-19_macos-amd64"
    sha256 "ea7f50f7f10df27a6e6571dd2ba0e262bc1d2176ed3529c563d4017ddb6c7a0e"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

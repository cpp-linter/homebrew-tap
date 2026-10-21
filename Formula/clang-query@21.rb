class ClangQueryAT21 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-2/clang-query-21_macos-arm64"
    sha256 "20995d0448e29fd707e11cf32a77e371b79de8b23e03f097a07ac98508b0a753"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-2/clang-query-21_macos-amd64"
    sha256 "642cc1d7a3a36f5452b9478402466fbcc066af0bd5c33d6da6e7ec4cf13d17a4"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

class ClangQueryAT20 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-query-20_macos-arm64"
    sha256 "eff6b56a3b0f7cd7f7cc540ba26ab30173f20f2c60f68d89d0312fd696bbe1be"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-query-20_macos-amd64"
    sha256 "bb71c3b714fc10003bdf275842a34a6469299e90247e158ed5d28c40de5a6953"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

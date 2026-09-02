class ClangQuery < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-22_macos-arm64"
    sha256 "b7e9f3ccecd5f0dfd8550df0b6f59e554702148bfd630b068345550a8dae945a"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-22_macos-amd64"
    sha256 "846ff356207ae799d8e9c57db4c461de08ef07089d73ccf565a8a0a29da02536"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

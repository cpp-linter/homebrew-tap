class ClangQueryAT21 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-21_macos-arm64"
    sha256 "cee5e17ac3ba810193931d998fe642732996fa574cedd48ca29733add16b5c4d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-21_macos-amd64"
    sha256 "642cc1d7a3a36f5452b9478402466fbcc066af0bd5c33d6da6e7ec4cf13d17a4"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

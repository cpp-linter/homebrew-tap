class ClangFormatAT19 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-19_macos-arm64"
    sha256 "462d4a0511214286d65b31ef69e65bc63220db7207cf1af364bfeac012acb0aa"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-19_macos-amd64"
    sha256 "1a516670f1aa19600412c572be9ecf2bd97166002cbad9132e5507e56ed5b75a"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

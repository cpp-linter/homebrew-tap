class ClangIncludeCleanerAT21 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-21_macos-arm64"
    sha256 "405df3afbb3994f62ca797ece886f3f0c901d99ccaac65cdc00a16e45a12ca31"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-21_macos-amd64"
    sha256 "7ce759363dd56d0f27d0b8a756354ca0a235e857585aab345b2974f2b7a055e7"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

class ClangIncludeCleanerAT21 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-21_macos-arm64"
    sha256 "405df3afbb3994f62ca797ece886f3f0c901d99ccaac65cdc00a16e45a12ca31"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-21_macos-amd64"
    sha256 "b45633650da8cd63b75bee7c730d3f6c6c3696560bb6ec21c562150e67851b18"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

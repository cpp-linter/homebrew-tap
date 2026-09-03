class ClangIncludeCleanerAT19 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-19_macos-arm64"
    sha256 "b4e5a8be7c9372f4983ff45ab80b253f77181f7d5e3ca2c4427957d469dcef1c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-19_macos-amd64"
    sha256 "2d8bd91aa66f08716a7815ddb99ebaf78f7d02b795343e458465d2621baaadaa"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

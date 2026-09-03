class ClangIncludeCleanerAT20 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-20_macos-arm64"
    sha256 "c457b0658bd403294ee58c562ade1bbb6ee0412c6fb6c732b8f49f6a72ea35f5"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-20_macos-amd64"
    sha256 "526631502c9acaa6a8392c1aa7faa7dafe9826d662d4aaccb810493645f35883"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

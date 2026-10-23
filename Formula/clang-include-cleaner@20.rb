class ClangIncludeCleanerAT20 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-include-cleaner-20_macos-arm64"
    sha256 "586eb82ad2b0eae445cca48a6b097e83a3c1afc013a7a3f33ee8936bb98fe3cd"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-include-cleaner-20_macos-amd64"
    sha256 "526631502c9acaa6a8392c1aa7faa7dafe9826d662d4aaccb810493645f35883"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

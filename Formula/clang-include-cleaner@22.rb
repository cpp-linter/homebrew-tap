class ClangIncludeCleanerAT22 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8/clang-include-cleaner-22_macos-arm64"
    sha256 "9a6602fb859c1e593b5bbed0a79c4171960c64d0cdf0df71aacceb87f491f9c1"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8/clang-include-cleaner-22_macos-amd64"
    sha256 "595b49dc7e899ef17e552c28d03e1851a82cc39d757c70e91539f21c42c2af31"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

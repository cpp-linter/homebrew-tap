class ClangFormatAT18 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-18_macos-arm64"
    sha256 "8c30984fe0da9ce249e6f05099f83b3fd976ba3ed0f2a6303fec9151722ebb7d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-18_macos-amd64"
    sha256 "7ab1ac106c9a47464a9d26dec6d48142dcbdef61b6193a4785fa5f70cde62019"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

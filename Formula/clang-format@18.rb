class ClangFormatAT18 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-18_macos-arm64"
    sha256 "4cd7c6a860ab0b9a0cc60c59159c93874b85371a04ccce1d8d4b7b1fc766bea8"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-18_macos-amd64"
    sha256 "7ab1ac106c9a47464a9d26dec6d48142dcbdef61b6193a4785fa5f70cde62019"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

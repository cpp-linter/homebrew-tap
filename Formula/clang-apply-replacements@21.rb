class ClangApplyReplacementsAT21 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-21_macos-arm64"
    sha256 "bc0e04f6d1dedca78c09d41799b5536fbdc2e669e3e6facbdb1c6dd8ce68dba0"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-21_macos-amd64"
    sha256 "6b08319b887aa2034173dcb00838fa1308df2cc27248c7770dd1e7195c3524d9"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

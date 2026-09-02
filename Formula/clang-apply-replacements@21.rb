class ClangApplyReplacementsAT21 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-21_macos-arm64"
    sha256 "bc0e04f6d1dedca78c09d41799b5536fbdc2e669e3e6facbdb1c6dd8ce68dba0"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-21_macos-amd64"
    sha256 "d5384b76ec5507bd92f8f5407f54ab7eea479954987295c42f021413765658bc"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

class ClangApplyReplacementsAT19 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-19_macos-arm64"
    sha256 "6b4e93fb1a6f77994142af0f764279156bcf13473b92f7c087e54342a48299b9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-19_macos-amd64"
    sha256 "6b62e12fa1a39a07b0c6b0492db034c6535e4711c77e6e6e75e32c77dd546460"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

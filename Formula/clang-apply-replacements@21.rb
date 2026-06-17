class ClangApplyReplacementsAT21 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-21_macos-arm64"
    sha256 "8631f2e45b4d1e63726ea496b684569cc396a5153ae117430b7b20649d6fb48a"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-21_macos-amd64"
    sha256 "6a8235d886c36ee43525c4e31d1a9eb23b4bec86f2215a068b0a0cf9849cbd06"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

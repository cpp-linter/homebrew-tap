class ClangApplyReplacements < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-23_macos-arm64"
    sha256 "3db22cb9bbfd196a07248451c754b7cf94e496896ec4b88892282d81cd1dd0af"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-23_macos-amd64"
    sha256 "b263a6e0d2f6ec208e2615864d5165f22eeb4237e6e1a4eb1234e904bb8f6000"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

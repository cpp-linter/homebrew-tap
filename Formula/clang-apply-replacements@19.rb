class ClangApplyReplacementsAT19 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-19_macos-arm64"
    sha256 "4d4c635ce852d319babb5ffcf617f511ac7ce52ae8b427511fe45bd0ad3e0f6d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-19_macos-amd64"
    sha256 "9055977e4c6b9276865b91f8386b4e0a9f8ec8f83f341caf5c5a759565f2a0ce"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

class ClangApplyReplacementsAT20 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-20_macos-arm64"
    sha256 "3049c95b932566ce6418c58bcde5880c6dc8b47dfccfa228efcd13c533f8b4bb"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-20_macos-amd64"
    sha256 "b13269c14f6993aa896041dc1742478396ecbd041be811e98cb277d015d2c4ce"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

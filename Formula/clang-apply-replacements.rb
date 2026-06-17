class ClangApplyReplacements < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-22_macos-arm64"
    sha256 "f16373970c89df9bd02f3cc8cc0dd8dbf6936ca9dd7ae55cedb1628519cfc96a"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-22_macos-amd64"
    sha256 "cb04db3abb8542c7e1342432e0ae37e24a10144e284670b71aff3d2f0725b97a"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

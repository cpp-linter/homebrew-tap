class ClangApplyReplacementsAT20 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-20_macos-arm64"
    sha256 "955d8ec2be6bc784a9586eb07850c756d28fab131571ca75d4996d330c77b176"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-20_macos-amd64"
    sha256 "b13269c14f6993aa896041dc1742478396ecbd041be811e98cb277d015d2c4ce"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

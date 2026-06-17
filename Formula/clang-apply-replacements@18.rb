class ClangApplyReplacementsAT18 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-18_macos-arm64"
    sha256 "a77dc49e90d74b0b652c00874d48bd0485fb80966fd4a40851e75d2b82267cf9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-18_macos-amd64"
    sha256 "2b09869aebeec7910ec29550fdcb485f4e872743138517b9026247cda55ae294"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

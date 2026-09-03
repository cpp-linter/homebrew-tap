class ClangApplyReplacementsAT22 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-22_macos-arm64"
    sha256 "6b714d0372b2fe5f267338d455f38d722497b3a44ac353892cdb87a276af6eec"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-22_macos-amd64"
    sha256 "ece6722eefc69020585ff43a18bab34817f9a40a23265d68d9713184873de275"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

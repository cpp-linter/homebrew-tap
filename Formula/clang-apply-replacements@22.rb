class ClangApplyReplacementsAT22 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-3/clang-apply-replacements-22_macos-arm64"
    sha256 "ad93fe72e676efba7518628180d941a6ac0674cdaa24dd8ef56e3f000a765c4d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-3/clang-apply-replacements-22_macos-amd64"
    sha256 "431ef5163d69c54aeba3fa28679382efec8350dbc248e3e0cbbce2df9a8594d1"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

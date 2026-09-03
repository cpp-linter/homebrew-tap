class ClangApplyReplacementsAT20 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-20_macos-arm64"
    sha256 "386f95f0556aafc39c8eea4e7ca6c300a7659ff05f5ef4acfe7d444bb54717d6"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-20_macos-amd64"
    sha256 "e3223bc439ee0b9ac1516f8e1900eec95a4ce4f38956b0dda097d0c9c59f4804"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

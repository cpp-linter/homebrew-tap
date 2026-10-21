class ClangApplyReplacementsAT20 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-2/clang-apply-replacements-20_macos-arm64"
    sha256 "4b86b10a5ecbc5c86d734f68bd40cf2be817e88fd7d087cb9bbc2d1d21ab8b6c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-2/clang-apply-replacements-20_macos-amd64"
    sha256 "e3223bc439ee0b9ac1516f8e1900eec95a4ce4f38956b0dda097d0c9c59f4804"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

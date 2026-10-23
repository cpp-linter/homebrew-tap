class ClangApplyReplacementsAT19 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-apply-replacements-19_macos-arm64"
    sha256 "b98577e05ae6131e736170845a6c1ff1984a33df8e3db0280757ee17cf6c9c5f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-apply-replacements-19_macos-amd64"
    sha256 "9055977e4c6b9276865b91f8386b4e0a9f8ec8f83f341caf5c5a759565f2a0ce"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

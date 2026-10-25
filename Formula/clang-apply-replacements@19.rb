class ClangApplyReplacementsAT19 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-apply-replacements-19_macos-arm64"
    sha256 "ce9bf793b731e5b65125dac3690f008c919ad0f8d7fa6a854fb1453413b1a285"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-apply-replacements-19_macos-amd64"
    sha256 "a46e4bbbb7dc0b8cc8b4f41a5164137581a7bf15164baf5fb8d928971b85db00"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

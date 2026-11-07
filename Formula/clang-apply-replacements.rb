class ClangApplyReplacements < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.5"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-apply-replacements-23_macos-arm64"
    sha256 "b1aadab598975fe5dff73021af15819d52a5ae6ee3facb057f1936cbcd3416ee"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-apply-replacements-23_macos-amd64"
    sha256 "d9831645fc27f0ff33f451517f17655fdced9ff410bf3843c390cb71b3d11e1b"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

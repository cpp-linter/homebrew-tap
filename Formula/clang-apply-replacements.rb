class ClangApplyReplacements < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.6"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-apply-replacements-23_macos-arm64"
    sha256 "795aabada71440c174fe40eabdfe1e4fc0e351c27c292a77d600a6e4cc252983"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-apply-replacements-23_macos-amd64"
    sha256 "57b4aff1efbd98a45e29893517faeabccd4bb86993765a847cb93a365a0cfc10"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system bin/"clang-apply-replacements", "--version"
  end
end

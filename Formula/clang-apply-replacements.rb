class ClangApplyReplacements < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-22_macos-arm64"
    sha256 "b1ceb939fcb4a6672cb1487353f877668e68b84c7785b6f703c61a55250af85d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-22_macos-amd64"
    sha256 "bbcd16296cadf7374adf8415035a617994bdcd4e6cb4673e3fb2620eccf8bc89"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

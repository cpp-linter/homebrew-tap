class ClangFormatAT19 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-19_macos-arm64"
    sha256 "682cdda5a194251cde7a5de15dce02568233fd21594339936d47a78b4bece335"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-19_macos-amd64"
    sha256 "637c43e6aec804f806fc555eb5f2eb6d5819fc24dc96d1854ec36e061c492618"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

class ClangFormatAT19 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-19_macos-arm64"
    sha256 "59e946a00239de512c573509a036adb635441ea9c4ee3f8e5e0bf47fb4a2186f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-19_macos-amd64"
    sha256 "637c43e6aec804f806fc555eb5f2eb6d5819fc24dc96d1854ec36e061c492618"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

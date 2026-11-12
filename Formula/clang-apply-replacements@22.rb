class ClangApplyReplacementsAT22 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-apply-replacements-22_macos-arm64"
    sha256 "50d695f5c6db754c50514a14e9f18f522c7ca1f72bb20dacd69e23d564cec5e6"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-apply-replacements-22_macos-amd64"
    sha256 "431ef5163d69c54aeba3fa28679382efec8350dbc248e3e0cbbce2df9a8594d1"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system bin/"clang-apply-replacements", "--version"
  end
end

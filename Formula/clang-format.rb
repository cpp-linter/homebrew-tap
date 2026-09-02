class ClangFormat < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-22_macos-arm64"
    sha256 "350c8ccdd232912a6abbcb0394dd2ff4118196dcc5ac31e125404787588bc686"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-22_macos-amd64"
    sha256 "2baa8632cb7c8a52e5e552f53591bc16ae67c476c13503dc518803b1b6030abe"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

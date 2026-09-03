class ClangTidyAT22 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-22_macos-arm64"
    sha256 "4d0bc713af5c14d75468547f33e572be316c8ad317351c60cc6ff8c4d9b9f166"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-22_macos-amd64"
    sha256 "5ae17609aa6919d1087700921e10a2cc7bab9ee955022ad0ffc21b1342ac04e6"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

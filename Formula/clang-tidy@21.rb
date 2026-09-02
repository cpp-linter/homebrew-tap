class ClangTidyAT21 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-21_macos-arm64"
    sha256 "73497cb6e5f14c1b3ea8d5df7a906bc1c997e0a6936758d0b155a86e337d1406"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-21_macos-amd64"
    sha256 "27aab84806c64f0b772644f2705c89bf9d5d083d48981610ba687f4da65cf223"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

class ClangTidyAT19 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-19_macos-arm64"
    sha256 "a245183e4d389728e7d0f23caf0b978f1bd3c6ceebfa92ef7d38d16715abf78c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-19_macos-amd64"
    sha256 "189ab766da41a275e0a113a5d40359bb6a76a557748d88ed524751919015f615"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

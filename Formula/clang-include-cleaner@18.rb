class ClangIncludeCleanerAT18 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-18_macos-arm64"
    sha256 "70d0b8f7f4c8ce09e1ca40cc428839c80bdd9a162401dfe7e19bf41ea94a481f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-18_macos-amd64"
    sha256 "d3258131494c214d8629db541e542dd2af92116eb8b171c11298dcd1527d4b66"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

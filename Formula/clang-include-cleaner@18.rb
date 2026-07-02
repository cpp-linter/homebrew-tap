class ClangIncludeCleanerAT18 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-18_macos-arm64"
    sha256 "70d0b8f7f4c8ce09e1ca40cc428839c80bdd9a162401dfe7e19bf41ea94a481f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-18_macos-amd64"
    sha256 "18c4accf4c50c85ceecbe3c7fe2cddecf431ca65bcb646e5e4b05c75a2f443aa"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

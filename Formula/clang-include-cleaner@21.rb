class ClangIncludeCleanerAT21 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-21_macos-arm64"
    sha256 "6f585c4973d1889bbdd1f93faf6c9ee265567f6f7ddd68a8828cf43f44c23f7b"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-21_macos-amd64"
    sha256 "504aa6314df7d8a0b96a792648523b8033a802bf533971bdae6bea686fd57762"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

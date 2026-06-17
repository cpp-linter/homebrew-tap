class ClangIncludeCleanerAT18 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-18_macos-arm64"
    sha256 "6bee18ab7992280b728410179da71a1bab79493707d21c0fdb420efe15ed8618"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-18_macos-amd64"
    sha256 "18c4accf4c50c85ceecbe3c7fe2cddecf431ca65bcb646e5e4b05c75a2f443aa"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

class ClangIncludeCleaner < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-22_macos-arm64"
    sha256 "022fff4eb4e8fbcd87c17671aec999914293e3f1f5a17cdda86186e2092d75e8"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-22_macos-amd64"
    sha256 "1cbdf9bd7db6644249e680a938767f5b663e6497a0b005d44088935a2ca453db"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

class ClangIncludeCleanerAT20 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-20_macos-arm64"
    sha256 "d3043c2377ed12e99afc6598464dfd4105e24a672c1e8e7500e16c04e8056baf"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-20_macos-amd64"
    sha256 "4489dd9beaf155bd0043e168e46004ee6c500c43a62986e67b9f49d283938926"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

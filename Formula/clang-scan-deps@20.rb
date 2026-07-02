class ClangScanDepsAT20 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-20_macos-arm64"
    sha256 "e9afa55161f7e5c89187a4aed94a515bd074449c8b29b1a1afb110c79663095c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-20_macos-amd64"
    sha256 "5960c5a6199e1b245788871168eeef2533aa2e05fd31a8295d624f3150a4c500"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

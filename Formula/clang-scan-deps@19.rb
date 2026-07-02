class ClangScanDepsAT19 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-19_macos-arm64"
    sha256 "6ffcf61496b720ecd7a710d1e95d1af930016b1976c26db47bdeb8facc5fabc9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-19_macos-amd64"
    sha256 "1be51f8d70402ff9edebddc3001a75aa2d660153db7d394aa40c3a37264622f5"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

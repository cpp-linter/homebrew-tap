class ClangScanDepsAT18 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-18_macos-arm64"
    sha256 "a71f6e94d694012135beff4f540a4c82b7da9b84a94b35b73a63a5390b6737cc"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-18_macos-amd64"
    sha256 "99e3bf1cd2536cd99f48dd226520f3377db6bb873853cb8cf20822a243ca4da9"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

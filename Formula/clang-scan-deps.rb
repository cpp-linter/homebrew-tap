class ClangScanDeps < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-22_macos-arm64"
    sha256 "6b23644e11f010608392233ed45bb086ba54f7f4878db628c72bd491e55bb583"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-22_macos-amd64"
    sha256 "49bea9d08b824741c85e58487ee948e83f9453be00efda77b1fabf128673bf41"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

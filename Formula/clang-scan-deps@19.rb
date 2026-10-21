class ClangScanDepsAT19 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-2/clang-scan-deps-19_macos-arm64"
    sha256 "fea26097fc232d8ce921c5a99335d73fe788b1d39b265e5db700d1dacde54807"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-2/clang-scan-deps-19_macos-amd64"
    sha256 "0e39e0c3d0dcc57fde84af9a12ff3fd87a6e77f6e0ca7010c99b1b3f084b286f"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

class ClangScanDepsAT20 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-scan-deps-20_macos-arm64"
    sha256 "ce2d68f4a3e7c4b7462a5837d46d989fee87e002e098b52ccf142a0cde3a369f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-scan-deps-20_macos-amd64"
    sha256 "5cb99bc62d51348176e8985bd1a0b0f7a8746816ba9e0a3dbdaced520bc61d82"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

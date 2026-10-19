class ClangScanDeps < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3/clang-scan-deps-23_macos-arm64"
    sha256 "5d834cc4cdce2bdc4b1741d23f90fc5621bf90a4a84470386c800dbab7e7ac8a"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3/clang-scan-deps-23_macos-amd64"
    sha256 "05309e401bfdb37c759f44e22bd082c3f3e9f7bbfa08520e438c2e4bddcea08b"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

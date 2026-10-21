class ClangIncludeCleanerAT19 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-2/clang-include-cleaner-19_macos-arm64"
    sha256 "28458eda8cf4a00287098092834e89af8bf4c658e691acece0714a1857be876c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-2/clang-include-cleaner-19_macos-amd64"
    sha256 "2d8bd91aa66f08716a7815ddb99ebaf78f7d02b795343e458465d2621baaadaa"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

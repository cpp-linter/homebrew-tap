class ClangIncludeCleanerAT20 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-include-cleaner-20_macos-arm64"
    sha256 "d6c30cd76db85235fba884734d7941f545a4f044d7c789ae534d8c10dcbf50dc"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-include-cleaner-20_macos-amd64"
    sha256 "d060e415b6ae661f3b9a26fdc14263ffe344100283f4da50ba3f00a64c224cd3"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

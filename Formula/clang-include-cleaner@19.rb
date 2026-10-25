class ClangIncludeCleanerAT19 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-include-cleaner-19_macos-arm64"
    sha256 "438a4cfb8868b6650c86110e70a0cc5a921562bad9422f7824ca7633c1680964"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-include-cleaner-19_macos-amd64"
    sha256 "795815fe9e4a21905f8d3a6632de7e90aceeac32cd11efad364025a035a627b5"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

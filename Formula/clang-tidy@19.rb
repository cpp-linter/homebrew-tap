class ClangTidyAT19 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-tidy-19_macos-arm64"
    sha256 "4650c275df721ef884d5a3c737b37e2dcacede0fb3f8d8123c2d0b8ef161a9b5"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-tidy-19_macos-amd64"
    sha256 "196f0cf12e045c4b394b86a5975276453d81f8998a7d6aeee6f99754b0e356f3"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

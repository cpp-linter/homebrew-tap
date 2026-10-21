class ClangApplyReplacements < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.3-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-apply-replacements-23_macos-arm64"
    sha256 "3f3df2d1df8beb15b02594942eb0e0885602810cbd4cfd4433742ef168bd03bb"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-apply-replacements-23_macos-amd64"
    sha256 "5c804b936b8f533bd378639fd6fac84f84e445982c13415d5b25d4b61cf23f44"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

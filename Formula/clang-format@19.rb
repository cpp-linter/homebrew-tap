class ClangFormatAT19 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-format-19_macos-arm64"
    sha256 "b75accd0e54b80394e157c3e81fd2b15aff38fac9d1ddc2d562a650d4e59b891"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-format-19_macos-amd64"
    sha256 "1a516670f1aa19600412c572be9ecf2bd97166002cbad9132e5507e56ed5b75a"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

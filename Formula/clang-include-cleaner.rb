class ClangIncludeCleaner < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-include-cleaner-23_macos-arm64"
    sha256 "56105456ab2f529ea7a99c942d8a4cb8dc31e073176aa6db232dae71c4de1af2"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-include-cleaner-23_macos-amd64"
    sha256 "9f4a0579da2d80bde7a99b21f0ea1ca83ae14265c6551090edc2fcc32f643127"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

class ClangTidyAT20 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-20_macos-arm64"
    sha256 "1b12e3873d5d585a10a798d28ae7d31e7e2a4f11e0ffce5dc0e6fe83c040c6ac"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-20_macos-amd64"
    sha256 "a76b057c7112908d553a551849b897165662356c75100f0532f688b8020a72a0"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

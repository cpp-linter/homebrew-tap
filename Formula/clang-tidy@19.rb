class ClangTidyAT19 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-19_macos-arm64"
    sha256 "73febf03a21625301154e0951491164a59e5c8f1e0a1dee39d9cffb26a21121e"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-19_macos-amd64"
    sha256 "3e4be9c6ecdfeed6732b2fa4b63ed80b3aeead126e9414d637b207f2f9485e7b"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

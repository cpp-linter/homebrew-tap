class ClangTidyAT20 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-tidy-20_macos-arm64"
    sha256 "cc17725536e15152aeecbcd6a3d64232429a3714df7b3330c5883ec9c6133799"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-tidy-20_macos-amd64"
    sha256 "617e08b7744604ecd0fb28c8ee5670eda1c0a5fd9a8dfefc953247685f40a476"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

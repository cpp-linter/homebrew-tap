class ClangTidyAT18 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-18_macos-arm64"
    sha256 "039dab48388b56f1157925b0838802c5d1d72c90f386526813073202357f089e"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-18_macos-amd64"
    sha256 "7ebd9e1efb35889b0b2756c6dbe3a9de7da3a625617f9cbf5180b38135086f44"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

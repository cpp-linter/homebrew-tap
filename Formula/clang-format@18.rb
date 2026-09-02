class ClangFormatAT18 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-18_macos-arm64"
    sha256 "8c30984fe0da9ce249e6f05099f83b3fd976ba3ed0f2a6303fec9151722ebb7d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-18_macos-amd64"
    sha256 "fbae1962f22d5d42e2f7731e521c946461baf8bf64913ef2e874e5dabbe19c0e"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

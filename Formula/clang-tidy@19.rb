class ClangTidyAT19 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-19_macos-arm64"
    sha256 "f9bb04d3d068e58ee5310cf860e56293b0c07f988e0b203040f62d5821f3cc33"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-19_macos-amd64"
    sha256 "3e4be9c6ecdfeed6732b2fa4b63ed80b3aeead126e9414d637b207f2f9485e7b"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

class ClangFormatAT20 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-20_macos-arm64"
    sha256 "169f5e43623202f3969c8ab659fce9e201c21dda83d018dcf3fb756b2d3bb37d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-20_macos-amd64"
    sha256 "07e6049c6cee253e683b5534ead02a75eb48c354a470c8a480ed3e42d5508fba"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

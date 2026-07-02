class ClangFormatAT20 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-20_macos-arm64"
    sha256 "e9ff95716f8574e36032b6a0b479bc83508210fddbb640c8850d119fb5b1077f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-20_macos-amd64"
    sha256 "07e6049c6cee253e683b5534ead02a75eb48c354a470c8a480ed3e42d5508fba"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

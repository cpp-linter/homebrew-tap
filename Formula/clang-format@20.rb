class ClangFormatAT20 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-20_macos-arm64"
    sha256 "1722bf4194299e688c733812a9afb29d78cca84a20d53489659bd62eaeca7a34"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-20_macos-amd64"
    sha256 "4c54a142ace7913ccd2d10cc20f4f0f997c2ca288278ca2e08dd3afb802aa768"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

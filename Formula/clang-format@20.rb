class ClangFormatAT20 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-format-20_macos-arm64"
    sha256 "4d96b72d1c3d5ae2ffd6c9f6093d382095eabe95d1bb8dd9d19e080e34b41591"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-format-20_macos-amd64"
    sha256 "4c54a142ace7913ccd2d10cc20f4f0f997c2ca288278ca2e08dd3afb802aa768"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

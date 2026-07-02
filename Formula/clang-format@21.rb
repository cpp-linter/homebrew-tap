class ClangFormatAT21 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-21_macos-arm64"
    sha256 "d7902edc5c898eef96449ff302c3ce2123182ad908f2f01526cd549893e4a0e3"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-21_macos-amd64"
    sha256 "2d200fefa507f1ef95acdd3f497115e545b09362bf8c986ebd57c67349d56874"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

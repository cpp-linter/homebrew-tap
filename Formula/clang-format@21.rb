class ClangFormatAT21 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-21_macos-arm64"
    sha256 "d7902edc5c898eef96449ff302c3ce2123182ad908f2f01526cd549893e4a0e3"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-21_macos-amd64"
    sha256 "8a9576ccebc2bb454ede3092274d294ff5edb23b0e453359475c3da1eb0d0e1e"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

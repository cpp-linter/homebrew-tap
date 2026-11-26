class ClangFormatAT20 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-format-20_macos-arm64"
    sha256 "00c284a351c048155ef748ab08c59e69ea12a45910d475e9a555e844c8a660b5"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-format-20_macos-amd64"
    sha256 "686f002efc41fc496b41e1eff7056d969e6eafbaac3f69a341c833ea1d1a3fc7"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system bin/"clang-format", "--version"
  end
end

class ClangFormatAT19 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-format-19_macos-arm64"
    sha256 "3a3d15b8dfa303b1a2aed7d159407d6e84bcf2cae931cabec80a9a739eb74381"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-format-19_macos-amd64"
    sha256 "5113906452255930b0341c3ebc0be2f70159676219c3ab152ee68581cc6b8a41"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

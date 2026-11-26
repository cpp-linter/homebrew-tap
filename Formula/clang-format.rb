class ClangFormat < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.6"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-format-23_macos-arm64"
    sha256 "6cf74fa5a19e32ba595e0d457c94f4f1f7732838bb22d7fec478bea2b3869eda"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-format-23_macos-amd64"
    sha256 "663c04bbeec7805a696853a731d4081a3080c2a53b2dd3343c42f718a4750c7b"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system bin/"clang-format", "--version"
  end
end

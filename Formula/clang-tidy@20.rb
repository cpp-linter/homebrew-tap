class ClangTidyAT20 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-2/clang-tidy-20_macos-arm64"
    sha256 "28ff0eb63470095eaaa2a9e21633c14e27b4179c7bdc908310f37bafeae10e53"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-2/clang-tidy-20_macos-amd64"
    sha256 "6e4055af36daeade3d48c2a77e00772292a82cfb5fcc053f1936f0ba5945d8fb"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

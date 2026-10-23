class ClangTidyAT21 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-tidy-21_macos-arm64"
    sha256 "f7e3b4862b892de3c4512094bc18cd2403fa63f74bf8080b3d90cf3f5f95325b"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-tidy-21_macos-amd64"
    sha256 "27aab84806c64f0b772644f2705c89bf9d5d083d48981610ba687f4da65cf223"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

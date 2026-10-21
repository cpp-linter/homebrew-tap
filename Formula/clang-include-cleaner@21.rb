class ClangIncludeCleanerAT21 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-2/clang-include-cleaner-21_macos-arm64"
    sha256 "3c0e6961478877e11f8f40f962819db4410737b986392e1d89d11ab39e016ced"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-2/clang-include-cleaner-21_macos-amd64"
    sha256 "7ce759363dd56d0f27d0b8a756354ca0a235e857585aab345b2974f2b7a055e7"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

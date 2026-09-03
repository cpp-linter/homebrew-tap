class ClangIncludeCleaner < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-23_macos-arm64"
    sha256 "62e3d256df94a182ead29918c1c503b4a4a54e6b7e32e7a0ef2f317981676496"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-23_macos-amd64"
    sha256 "92c316b64bd408bbc0e63f264ba4ef3d26bf2d03aa7200a00e9243d2cc0e7710"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

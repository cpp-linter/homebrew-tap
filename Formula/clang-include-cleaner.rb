class ClangIncludeCleaner < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-22_macos-arm64"
    sha256 "62e313e8970e66c346699c6464b03d03df2bd4e67d8c230e3c347bf869d96ec8"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-22_macos-amd64"
    sha256 "1dcc52f3dde9e9c1d3b6d48d0675a9f576d33a107a01f61b3235addef8e608f9"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

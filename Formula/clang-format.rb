class ClangFormat < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-23_macos-arm64"
    sha256 "d96a0b91b3e5b4cf838dab660dc9377a0083a5c04fb4ffb9ba75d09a727586c2"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-23_macos-amd64"
    sha256 "bd0701417baa228078e19f4d84b3ef276bc18425154e0dc87b647946424b7862"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

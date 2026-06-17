class ClangFormat < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-22_macos-arm64"
    sha256 "bb228a2fa1b6789cbd0a7e3c942bff94fa43a4cd9ebfdb94ae06ea82376b9af5"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-22_macos-amd64"
    sha256 "e947704d428091337310b86ea07646cbbb1849b6050a4631dbb0b5b656731be4"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

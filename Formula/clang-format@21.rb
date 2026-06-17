class ClangFormatAT21 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-21_macos-arm64"
    sha256 "f26e8b315b4f85db37c6b0b55be3fdb6940562b8cb1f21d25e272f7747a3a263"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-21_macos-amd64"
    sha256 "06dc259924fb2e46f1f046d0134b96e4c6ecad4e155f5b53edea3394c6b47ff9"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

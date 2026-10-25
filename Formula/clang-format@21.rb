class ClangFormatAT21 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-format-21_macos-arm64"
    sha256 "b09a880d055b3dc25969248b2ae0cce45ae0d9551859a5ccb3b1d0fceb6f0fb4"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-format-21_macos-amd64"
    sha256 "bd3af2c8319dfed7745e0cff4712dbe2c27bfdf6928bd979468177aba28aff37"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

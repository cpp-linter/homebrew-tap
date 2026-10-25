class ClangIncludeCleanerAT21 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-include-cleaner-21_macos-arm64"
    sha256 "ba64116a588a81ffcbcd0f8a1f7ce6f901c20424f9e232cf5553a72e0e25c78c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-include-cleaner-21_macos-amd64"
    sha256 "b645d352a73479130d302d760906d67f27ffb2c3bbcec43746d665d8b1052cbd"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

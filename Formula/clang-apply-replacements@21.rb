class ClangApplyReplacementsAT21 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-apply-replacements-21_macos-arm64"
    sha256 "ebe7d3e102146cd860ecd2a255bff33584cc06c1c61375faf4efc3e6960f2c03"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-apply-replacements-21_macos-amd64"
    sha256 "250f949b940defdcef51b43f24eef99026697aa207f6f67651a7a6201f1a867f"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

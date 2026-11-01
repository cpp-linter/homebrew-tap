class ClangApplyReplacements < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-apply-replacements-23_macos-arm64"
    sha256 "91fc46a2834641ab00ed2694d408088de163077ca7feea9061f55d5fe013b49b"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-apply-replacements-23_macos-amd64"
    sha256 "5f5f3ec7f78c0d36ab1872027c3f8d2958f694e39c9a74aacbbe6fb5793d7d2a"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

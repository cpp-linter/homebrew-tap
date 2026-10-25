class ClangApplyReplacementsAT20 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-apply-replacements-20_macos-arm64"
    sha256 "1343e932d54ab9331f61ede52a7a8042c38ebc5e0e0ae8826a392e7919ad3df5"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-apply-replacements-20_macos-amd64"
    sha256 "ab39d045ee64a4dff72a63ec5c91dcd975e3b653d46d2b2f7845a46f034b05f6"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

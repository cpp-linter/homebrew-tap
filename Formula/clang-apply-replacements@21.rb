class ClangApplyReplacementsAT21 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-apply-replacements-21_macos-arm64"
    sha256 "317e0f92e87bc0b34fd51b78d582495472e4e7128bada4189b7ede103d8ef18c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-apply-replacements-21_macos-amd64"
    sha256 "d5384b76ec5507bd92f8f5407f54ab7eea479954987295c42f021413765658bc"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

class ClangIncludeCleaner < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.3-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-include-cleaner-23_macos-arm64"
    sha256 "b3de897b49598172e1ba689ff1c18bcbe94f78bd02cbe368bd4ea08de36e9eea"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-include-cleaner-23_macos-amd64"
    sha256 "04995be55ada652197a946a8947e4dfe36723959c2ab12b53430d1e588ab010b"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

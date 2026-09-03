class ClangQuery < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-23_macos-arm64"
    sha256 "cb5a6d7f94621af8b52adca89b93b6a67543726df217338867a6648cfa79ea62"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-23_macos-amd64"
    sha256 "31f26eed090ea9b23177cc183a820db60bf3d6c0968c6eb0a0613d4273e5c1fe"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

class ClangQueryAT19 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-19_macos-arm64"
    sha256 "a6c0cfa631f2e7b3a1c695f2086750d93a84603ac31d7e49daac853bab39c839"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-19_macos-amd64"
    sha256 "6ee00758b8ab054da66f36118c029adfdbd8055945cb87afc683e46e8b93fb10"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

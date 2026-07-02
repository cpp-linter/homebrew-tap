class ClangQueryAT19 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-19_macos-arm64"
    sha256 "234be822b78943f814ba9591805a117f2d46f0c59c76e3c96dc998f00587dc3c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-19_macos-amd64"
    sha256 "6ee00758b8ab054da66f36118c029adfdbd8055945cb87afc683e46e8b93fb10"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

class ClangQuery < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.5"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-query-23_macos-arm64"
    sha256 "686932225106e089210e072a0422ea99b9b8b876914092c7acd59dfd186c6a69"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-query-23_macos-amd64"
    sha256 "c6bf94de9be769874120fbf3e52efcfda001eb3ba07dba5431d9aa578f588b86"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

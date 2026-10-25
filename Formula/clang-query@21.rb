class ClangQueryAT21 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-query-21_macos-arm64"
    sha256 "dc2dc8e9d04ef1419a3386ef1d5a1c558e0c127d827b2972471f609defe63eda"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-query-21_macos-amd64"
    sha256 "7b75eacc5b934fa15c9b97194c8ed53181e5173db0790a279f12cf45c4a105e5"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

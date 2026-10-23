class ClangQueryAT20 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-query-20_macos-arm64"
    sha256 "c51b4dc444a8619da530538ba3a4f14c29fd89bd371f8eb98ca0ca12e8046039"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-query-20_macos-amd64"
    sha256 "3e737973ba432b0fe30cbf8f678982f13b2826b8aca0eb642ce6c16584890333"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

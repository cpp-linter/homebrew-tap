class ClangQueryAT20 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0/clang-query-20_macos-arm64"
    sha256 "c66edf20497e303fab2509dc181b0932549b0b3e153be307306f70e005634ba6"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0/clang-query-20_macos-amd64"
    sha256 "3e737973ba432b0fe30cbf8f678982f13b2826b8aca0eb642ce6c16584890333"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

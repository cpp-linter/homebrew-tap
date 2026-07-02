class LlvmProfdataAT20 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-20_macos-arm64"
    sha256 "69156e8b70aad895c44004bd7ecb0548c98150266b84982f256f4dec10a0494a"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-20_macos-amd64"
    sha256 "e57a38899fda4e5a2ae7d6617bc75e3180e3b378ce169795129c5b24cf54dca0"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

class LlvmProfdataAT18 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-18_macos-arm64"
    sha256 "a3b49b8308c07dda0f62ceb8368cdeba664fc96b526bc91af303ab6b6b4d1cc9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-18_macos-amd64"
    sha256 "edb5fd6c78d99fc1c9c1e5ed25799341d754f04ad317ed978621a06297a08716"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

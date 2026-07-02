class LlvmProfdataAT18 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-18_macos-arm64"
    sha256 "a3b49b8308c07dda0f62ceb8368cdeba664fc96b526bc91af303ab6b6b4d1cc9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-18_macos-amd64"
    sha256 "62b7ab3ffc436722d1ff12173c38c6cbbf349b69ae480f94ec2cf7bc04bb717d"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

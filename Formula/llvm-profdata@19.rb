class LlvmProfdataAT19 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/llvm-profdata-19_macos-arm64"
    sha256 "facf4083f93729b9598121852f4a597e1c4517da45a27281ccba135bc4443805"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/llvm-profdata-19_macos-amd64"
    sha256 "c8e02ea59781e6b053b358dfa76efab5fedca3ee2e216785c4aae157d6f5e072"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

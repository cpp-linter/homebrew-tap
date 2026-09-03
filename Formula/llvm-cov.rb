class LlvmCov < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-23_macos-arm64"
    sha256 "3fef3a84e4e91ede42fe2802d03580c484c449a6acadacb9a3cc819c43f2986c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-23_macos-amd64"
    sha256 "80c34349c82476af4070da02b83b2afc751cf3b449e0143b58ac99ce5c1fbb93"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

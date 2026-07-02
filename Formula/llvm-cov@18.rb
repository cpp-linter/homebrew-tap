class LlvmCovAT18 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-18_macos-arm64"
    sha256 "1da632171ebac83d1b24917b573c9ce220f3236fb3e32ec69708f99fbcb719aa"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-18_macos-amd64"
    sha256 "73987cf4564678cf0606c81085cdf4c530acc0e4940cc7234c8b96ecadc0fd73"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

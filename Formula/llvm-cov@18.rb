class LlvmCovAT18 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-18_macos-arm64"
    sha256 "1da632171ebac83d1b24917b573c9ce220f3236fb3e32ec69708f99fbcb719aa"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-18_macos-amd64"
    sha256 "e4f7f87d7d020827681acc8bcc45a229264c4681a064721dd9b5c78002c6dc27"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

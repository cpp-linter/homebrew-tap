class LlvmCovAT21 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/llvm-cov-21_macos-arm64"
    sha256 "d57cf9740871b978a466a4cade3525345ed6f168bf540e64ab6b3bfad06efaf9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/llvm-cov-21_macos-amd64"
    sha256 "f0fb7fe714579d75decc4ec297a7b077c13ec52836cd814e0c03d42b100646cd"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

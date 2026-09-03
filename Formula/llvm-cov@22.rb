class LlvmCovAT22 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-22_macos-arm64"
    sha256 "4592b8cebe0e1f72ba31d85d5a1787e5aeded5e5ba7d6d42375a9e80a78a5d04"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-22_macos-amd64"
    sha256 "d278591768568a4c1075f64d1844e0735969d8feaa91222eafca4edc15f07487"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

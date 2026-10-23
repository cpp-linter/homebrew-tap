class LlvmCov < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.3-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-3/llvm-cov-23_macos-arm64"
    sha256 "4dc36632b68c8da6315440dd029d5c86694325e17c4f2537675c3bd22a73f3b9"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-3/llvm-cov-23_macos-amd64"
    sha256 "7bf7eb87f95cbff046aa9506c93bcc95bfb31c182895a33cc8a7fcacbe6d16af"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

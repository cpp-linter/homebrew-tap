class LlvmCov < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.6"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-cov-23_macos-arm64"
    sha256 "851d5763e2a431448b85a1d22ef1790dd6358ce9c274f92ada95443341a3e8af"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-cov-23_macos-amd64"
    sha256 "5faefee802c613f14492db8478ca097e236aa92bd2a2404dc163c240a7a20dfc"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system bin/"llvm-cov", "--version"
  end
end

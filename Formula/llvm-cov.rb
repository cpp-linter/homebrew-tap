class LlvmCov < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-cov-23_macos-arm64"
    sha256 "2d241af32a6620c65b993d02c54a02fb2edc39c830a88147f82389d51eb606f2"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-cov-23_macos-amd64"
    sha256 "9adea9391a6260846344a6980eb1942b3f9f7c0ad8042bc0cd9e626ff5fd00ed"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

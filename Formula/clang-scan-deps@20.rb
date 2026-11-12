class ClangScanDepsAT20 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-scan-deps-20_macos-arm64"
    sha256 "dc192a1156b1eaf571c0917b8a81ed11229e37c96dc69e83a17e97c2ecf3e41d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-scan-deps-20_macos-amd64"
    sha256 "5cb99bc62d51348176e8985bd1a0b0f7a8746816ba9e0a3dbdaced520bc61d82"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system bin/"clang-scan-deps", "--version"
  end
end

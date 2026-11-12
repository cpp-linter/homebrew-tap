class LlvmCovAT22 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-cov-22_macos-arm64"
    sha256 "e789474fc2ab1ef8beecb8fcc5330076b699c179ce7f9bd74fb1c911c25b96e8"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-cov-22_macos-amd64"
    sha256 "45ffc02717627a416c230093a1a31f71dbc5994c4ed2f93a0dff52ff9e09b173"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system bin/"llvm-cov", "--version"
  end
end

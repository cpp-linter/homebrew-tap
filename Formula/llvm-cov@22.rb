class LlvmCovAT22 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/llvm-cov-22_macos-arm64"
    sha256 "3986cf743790376406ba99b1020d8e00f028ed023aa64f8fde47bad6794fc3bd"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/llvm-cov-22_macos-amd64"
    sha256 "45ffc02717627a416c230093a1a31f71dbc5994c4ed2f93a0dff52ff9e09b173"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

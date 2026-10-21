class ClangTidyAT22 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-tidy-22_macos-arm64"
    sha256 "6ef111bee4e663fea1cc5a6e4634be48442896706222200a15da2ad4b782f84d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-tidy-22_macos-amd64"
    sha256 "499731580ef04ca250a2e218c23ab94d94e241d479b7106266eea1af56771cfe"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

class ClangTidy < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-tidy-23_macos-arm64"
    sha256 "0cb59ace4a07b8c9151cca5f048ddf3ade06e986e68c23d0eda48299365bf7e0"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-tidy-23_macos-amd64"
    sha256 "7d326248dc099c99475b59925556dd029f1ede1c753d7f53ec2478fedfb26dec"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

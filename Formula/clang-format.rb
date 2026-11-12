class ClangFormat < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.5-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5-2/clang-format-23_macos-arm64"
    sha256 "d813d20b122172ae05e19b4748fbd945ba1cbbc71a25d4e59f1de9d592cf4a6c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5-2/clang-format-23_macos-amd64"
    sha256 "ee5974d5f2f0afb54319eff6b304547e8566613418c41362c8b48fc9207a81f8"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system bin/"clang-format", "--version"
  end
end

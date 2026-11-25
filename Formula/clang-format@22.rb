class ClangFormatAT22 < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-format-22_macos-arm64"
    sha256 "1b4e23f92dac24af9cfbeb01dbe948585bce861b2b8e3968e8249f26af867c5e"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-format-22_macos-amd64"
    sha256 "b9d3106e7d0f06550a1014adc4634cda6a94f1f6b761c50b01a7d73a55c8ec3a"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system bin/"clang-format", "--version"
  end
end

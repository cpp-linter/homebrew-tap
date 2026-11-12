class LlvmProfdata < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.5-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5-2/llvm-profdata-23_macos-arm64"
    sha256 "e230f4620db5ec9bf8b81139599540338ec25d3bb43aeda68c4369e346fa9205"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5-2/llvm-profdata-23_macos-amd64"
    sha256 "88baa44c240f26ce94a95549097f0b8ec263637d44760741bf0403af372b28dd"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system bin/"llvm-profdata", "--version"
  end
end

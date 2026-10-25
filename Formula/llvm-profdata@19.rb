class LlvmProfdataAT19 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-profdata-19_macos-arm64"
    sha256 "6c546145a65c98efc1d93e3ba6699abd4dedd400dc5a314b79a2583fabbdb029"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-profdata-19_macos-amd64"
    sha256 "b8929ec931e19863970c247513ba64c62bde2bf5eae9b0852c5e0dc44f2cc8ee"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

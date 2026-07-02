class LlvmProfdataAT19 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-19_macos-arm64"
    sha256 "e12b9a1f5161324bf88a3d75af78106067ec2641b858828895965b1f6334f82a"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-19_macos-amd64"
    sha256 "97fd096cdd2a5fef5cda5638212d8fd17da4f2bb3139d28be34620ce203f36f6"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

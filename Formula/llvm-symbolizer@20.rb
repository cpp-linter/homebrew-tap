class LlvmSymbolizerAT20 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-20_macos-arm64"
    sha256 "813b9e2e18a9c3634ce23f469ca7065cb6e95b9b995be3ed0853d2828d98c11f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-20_macos-amd64"
    sha256 "05df263f415804ad3db606e82a5015b0ab697ad40e62f3469b6302f1674a541a"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

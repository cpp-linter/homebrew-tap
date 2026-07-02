class LlvmSymbolizerAT21 < Formula
  desc "Static binary for llvm-symbolizer"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-21_macos-arm64"
    sha256 "2f9e8c0d43a1ccae3218e5294858432d12767363a1048a489ef2aac2ce165637"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-21_macos-amd64"
    sha256 "13eff225b6d57c01f70f02052ea5ebbd411d9429ad02d94a759e70fa54c8460c"
  end

  def install
    bin.install Dir["llvm-symbolizer-*"].first => "llvm-symbolizer"
  end

  test do
    system "#{bin}/llvm-symbolizer", "--version"
  end
end

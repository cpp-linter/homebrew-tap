class LlvmProfdataAT20 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/llvm-profdata-20_macos-arm64"
    sha256 "022113e468230ba7e7972d8544a924b567c1d94bef4e8ffaa0f9d4e158412f07"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/llvm-profdata-20_macos-amd64"
    sha256 "68e95fa75477e252fe99ff8d2cbab3ddf7a980a193aafa2dc3a6429f2ba32061"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

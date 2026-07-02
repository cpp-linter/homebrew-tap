class LlvmProfdataAT21 < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-21_macos-arm64"
    sha256 "a79833fab330c39763c0c5b99101c21970b75686823e13837ebfe8a302e72c8d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-21_macos-amd64"
    sha256 "e47adef3a9e726ee9176401b7f0cc09fffb50d9a78870d05fec43ebaf6dec0b5"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

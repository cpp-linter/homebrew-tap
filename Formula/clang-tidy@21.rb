class ClangTidyAT21 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-tidy-21_macos-arm64"
    sha256 "d94dbf5f3d8735d41518f2ac70798f8266dc358a0a91835e08c96dc84815a198"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-tidy-21_macos-amd64"
    sha256 "3424b4db0921471cbd5f56c834f9ea0bb9a6f6a946ecfa96c9147bba8ead935a"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

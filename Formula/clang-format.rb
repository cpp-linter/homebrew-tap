class ClangFormat < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-format-23_macos-arm64"
    sha256 "9d8668dce13e818e7a9b35633a58585644e75acade660fb9c1ad2e9db773df0f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-format-23_macos-amd64"
    sha256 "61a213a2e2976323112b4973fa47799586b05f513b28bc8a3c93eae73b6731c1"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

class ClangFormat < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.3-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-3/clang-format-23_macos-arm64"
    sha256 "5058dd0c95efa80571676aa9ebf91283d12e50231018e00d423ccdf211bb7999"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-3/clang-format-23_macos-amd64"
    sha256 "edfbdfaf80e2e04431ea47397f331e6ac16e12eb7a75c579a70cfa848cd3459c"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

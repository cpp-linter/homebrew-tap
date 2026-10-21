class ClangTidyAT19 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-2/clang-tidy-19_macos-arm64"
    sha256 "c2af3dbcbe8708ec4629e155bd79c5c7c5ed635b61605b3dfd70b9807f4e6fbb"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-2/clang-tidy-19_macos-amd64"
    sha256 "189ab766da41a275e0a113a5d40359bb6a76a557748d88ed524751919015f615"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

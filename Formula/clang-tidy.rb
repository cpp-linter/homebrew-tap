class ClangTidy < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.5"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-tidy-23_macos-arm64"
    sha256 "f5c932df081106334aefcd673a2bee468e9db55859cf3a2de248d2ca9357d0c5"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-tidy-23_macos-amd64"
    sha256 "3d05d1a2e89a22e897d00cfc38af2b26e2903f2b769fe5da0c1eaafbae816285"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

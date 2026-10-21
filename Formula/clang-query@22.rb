class ClangQueryAT22 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-query-22_macos-arm64"
    sha256 "c68fe31cb626f19dfe24a18e4e32136af0e9c5920d34048fac61212c135d253b"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-query-22_macos-amd64"
    sha256 "2ef2587ba60262835454f3d5c53d8b9db51b57209f4331df2bf7ff0a38fe9fb3"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

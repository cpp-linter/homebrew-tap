class ClangQueryAT21 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-21_macos-arm64"
    sha256 "cee5e17ac3ba810193931d998fe642732996fa574cedd48ca29733add16b5c4d"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-21_macos-amd64"
    sha256 "ad4bf98cf71283bb1504bec3904a234ef5845c7c23ef6a395782c25fb7f3de5c"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

class ClangTidy < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-23_macos-arm64"
    sha256 "f5cd269482cd237c807c5b400fb0742e928d21c9d71748f90afe29701b66bc54"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-23_macos-amd64"
    sha256 "b496437cd314ce142e3a3a46ab6487f2b2a28ecd56e4b66e736cdcac192860d1"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

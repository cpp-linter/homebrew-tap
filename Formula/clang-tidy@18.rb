class ClangTidyAT18 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-18_macos-arm64"
    sha256 "187ef171401d48f3ab3d44bf18052f0353be33c8dbf02adf4fa03c33ee2ef570"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-18_macos-amd64"
    sha256 "3f12b4376aeff8ed2f7fb5946370afd0122c349b6a47b41faf3c9c2b956c9970"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

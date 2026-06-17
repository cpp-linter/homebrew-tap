class ClangTidyAT21 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-21_macos-arm64"
    sha256 "7e44894534ccaa37859bec0abd872ab9770d0c974b2f8de532445a9b0755c328"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-21_macos-amd64"
    sha256 "1fc65ca255b56b6206099036ce7ae474cef4308f6f495878b61182e2c1d03bac"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

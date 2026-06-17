class ClangQueryAT20 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-20_macos-arm64"
    sha256 "36e6caf33b1fc2e266471d3fb11556e1a585579d8ae016d00b74ca97c96e988f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-20_macos-amd64"
    sha256 "b24f850991848329196ccdcadbaf4f69e6eabf2ff214aacbede1f0b3548976fd"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

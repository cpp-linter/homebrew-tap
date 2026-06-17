class ClangQueryAT21 < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-21_macos-arm64"
    sha256 "1cea78a6dc1f50ed1ad57fd217d7d6ec48bd63ae7719ef459e9d01368aafef82"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-21_macos-amd64"
    sha256 "9002414bd5165bcea8fe47fa5140bba8686b47a2d92484ea4f01b863bb996472"
  end

  def install
    bin.install Dir["clang-query-*"].first => "clang-query"
  end

  test do
    system "#{bin}/clang-query", "--version"
  end
end

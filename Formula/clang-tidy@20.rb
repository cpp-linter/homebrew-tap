class ClangTidyAT20 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-20_macos-arm64"
    sha256 "d7c1f4868601c2f4738c4e2fc0d7023711eaf1a65effa507260111bc5fac6a01"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-20_macos-amd64"
    sha256 "6e4055af36daeade3d48c2a77e00772292a82cfb5fcc053f1936f0ba5945d8fb"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

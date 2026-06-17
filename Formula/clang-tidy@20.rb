class ClangTidyAT20 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-20_macos-arm64"
    sha256 "b8cf2b28ab71363d3f2b5de2888f31fd8cb84777be79b3ff9139e5f26e4310af"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-20_macos-amd64"
    sha256 "a76b057c7112908d553a551849b897165662356c75100f0532f688b8020a72a0"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

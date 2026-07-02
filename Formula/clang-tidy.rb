class ClangTidy < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-22_macos-arm64"
    sha256 "f1a1074cb4800038d73e74dae421da0af0e166703e7666a6906135bdbfcf7e85"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-22_macos-amd64"
    sha256 "aaa72a4078b784dc9e3e3b866e2e367786d8bd3815f93a71aa0886d17cc56a07"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

class ClangIncludeCleanerAT19 < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-19_macos-arm64"
    sha256 "5a3342cfed0ebfa15a3d38d0f04e5511eaf74d27a3f0aec467fb7ffb63f511fc"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-19_macos-amd64"
    sha256 "511289dddbe2f6cf141b942e5289f120e99a232e6fe9db9ec1452a8b820470d8"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

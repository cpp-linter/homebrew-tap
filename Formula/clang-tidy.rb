class ClangTidy < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-22_macos-arm64"
    sha256 "4a21cb5fb9c5e56a164365c33aae9da5f72f2e5e2233c56e8e5a85b405f63e5f"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-22_macos-amd64"
    sha256 "15acd9d97ffe05264771aac944f9afd348107e9a2db95159653e7793514c29b4"
  end

  def install
    bin.install Dir["clang-tidy-*"].first => "clang-tidy"
  end

  test do
    system "#{bin}/clang-tidy", "--version"
  end
end

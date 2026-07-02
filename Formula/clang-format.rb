class ClangFormat < Formula
  desc "Static binary for clang-format"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-22_macos-arm64"
    sha256 "eed04ce5a8994c5163d917ecccbb4fce2d5d73982b8d86df33ffe85f6108c548"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-22_macos-amd64"
    sha256 "7efc86a20c578a5c771e534eb12f3cc0e1025b125aa467745f647b3d95b232ab"
  end

  def install
    bin.install Dir["clang-format-*"].first => "clang-format"
  end

  test do
    system "#{bin}/clang-format", "--version"
  end
end

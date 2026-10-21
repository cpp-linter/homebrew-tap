class ClangScanDepsAT21 < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.0-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-2/clang-scan-deps-21_macos-arm64"
    sha256 "b142b6464f9784b9a0145c98c3ec42084c5df109c08297c907d66a90c7be7a26"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-2/clang-scan-deps-21_macos-amd64"
    sha256 "f3a485d53b2a2441e1719f26e8a5f9d631d35e3ba791f326e20f62b18c28b98a"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

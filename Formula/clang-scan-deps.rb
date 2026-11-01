class ClangScanDeps < Formula
  desc "Static binary for clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-scan-deps-23_macos-arm64"
    sha256 "cf36145f51a751f8a6f5dff6dee53069a13eaa18f32318f81be1ad231f56357c"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-scan-deps-23_macos-amd64"
    sha256 "25d144e0c4a8d866cbaa364a96cb0e94bfaf783aa92f93274e1250c515962932"
  end

  def install
    bin.install Dir["clang-scan-deps-*"].first => "clang-scan-deps"
  end

  test do
    system "#{bin}/clang-scan-deps", "--version"
  end
end

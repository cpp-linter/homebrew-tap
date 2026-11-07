class ClangIncludeCleaner < Formula
  desc "Static binary for clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.5"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-include-cleaner-23_macos-arm64"
    sha256 "ccbe31589a50b188c65c09f4196e76b0042b6a4da16b4f0eaf7893cd20417b2a"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-include-cleaner-23_macos-amd64"
    sha256 "67de85c2ffd77bc9eea93ee94f767e421bbddbee0fdb0b5202494c0bc4e483ed"
  end

  def install
    bin.install Dir["clang-include-cleaner-*"].first => "clang-include-cleaner"
  end

  test do
    system "#{bin}/clang-include-cleaner", "--version"
  end
end

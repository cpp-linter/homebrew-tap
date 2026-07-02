class LlvmCovAT21 < Formula
  desc "Static binary for llvm-cov"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-21_macos-arm64"
    sha256 "39b38875b0ca895eb4f2f1d65660b0390a67f6a509433ddba5c4d4893d67ea64"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-21_macos-amd64"
    sha256 "992d7e28ae06f7a7980153a2ad80a4bf5d20ae498ba9bbdcadedd2d60896d4eb"
  end

  def install
    bin.install Dir["llvm-cov-*"].first => "llvm-cov"
  end

  test do
    system "#{bin}/llvm-cov", "--version"
  end
end

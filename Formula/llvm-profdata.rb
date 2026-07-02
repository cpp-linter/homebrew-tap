class LlvmProfdata < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-22_macos-arm64"
    sha256 "c9fe0ec6fb41414d7cfea2ff23224b506fb48755e663141c1af180950e135517"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-22_macos-amd64"
    sha256 "5490e41beac60371fffc61d72c9b884d6efdaa884f947cdd28db8dbf9a330a65"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

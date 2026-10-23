class LlvmProfdata < Formula
  desc "Static binary for llvm-profdata"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.3-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-3/llvm-profdata-23_macos-arm64"
    sha256 "05557d23dd2e25b7c009c27fa3f4f83140ff2e29e128c36fc39802024753ef77"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-3/llvm-profdata-23_macos-amd64"
    sha256 "e5f2558042d597841e63e6629f32b76ac708912c17dc11557cf8af113f58d3ee"
  end

  def install
    bin.install Dir["llvm-profdata-*"].first => "llvm-profdata"
  end

  test do
    system "#{bin}/llvm-profdata", "--version"
  end
end

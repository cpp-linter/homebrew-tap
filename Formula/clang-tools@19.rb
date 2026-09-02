class ClangToolsAT19 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-19_macos-arm64"
    sha256 "462d4a0511214286d65b31ef69e65bc63220db7207cf1af364bfeac012acb0aa"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-19_macos-arm64"
      sha256 "a245183e4d389728e7d0f23caf0b978f1bd3c6ceebfa92ef7d38d16715abf78c"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-19_macos-arm64"
      sha256 "2ed20048116427bfe06cc280c6e4068e245560f48adbf214ab87265387d7ab4a"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-19_macos-arm64"
      sha256 "4d4c635ce852d319babb5ffcf617f511ac7ce52ae8b427511fe45bd0ad3e0f6d"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-19_macos-arm64"
      sha256 "b4e5a8be7c9372f4983ff45ab80b253f77181f7d5e3ca2c4427957d469dcef1c"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-19_macos-arm64"
      sha256 "4787febf15cd5eff20e1d5b689cb1ac95b4dc54364189fe9cc7905609c30596f"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-19_macos-arm64"
      sha256 "93019ea7380e16cdeb38ede95707fdfbbbde18d5f375e3a516b7525ac7996efc"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-19_macos-arm64"
      sha256 "fc28992bfae02bfc768ec362a63d33a261a7d0f4adb9b70c54389aab50186388"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-19_macos-arm64"
      sha256 "48da97805b3963f6bce1f907c76d308b8425cb20b93c8c244ff3402b8f9767f8"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-19_macos-amd64"
    sha256 "1a516670f1aa19600412c572be9ecf2bd97166002cbad9132e5507e56ed5b75a"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-19_macos-amd64"
      sha256 "189ab766da41a275e0a113a5d40359bb6a76a557748d88ed524751919015f615"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-19_macos-amd64"
      sha256 "ffefb5b76117041149619704ad3a2946c42d5263a65f6495967109918db5ab95"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-19_macos-amd64"
      sha256 "9055977e4c6b9276865b91f8386b4e0a9f8ec8f83f341caf5c5a759565f2a0ce"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-19_macos-amd64"
      sha256 "2d8bd91aa66f08716a7815ddb99ebaf78f7d02b795343e458465d2621baaadaa"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-19_macos-amd64"
      sha256 "b36dd4b1aeafbd26b0f32b8afe120aded6874fa6620fcac6bbdd5d4a55c00efb"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-19_macos-amd64"
      sha256 "c8e02ea59781e6b053b358dfa76efab5fedca3ee2e216785c4aae157d6f5e072"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-19_macos-amd64"
      sha256 "40fc50b8d7d084ce047fa3cb72535b3d913faf23e2afa4669d7710e6d013ad1d"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-19_macos-amd64"
      sha256 "0e39e0c3d0dcc57fde84af9a12ff3fd87a6e77f6e0ca7010c99b1b3f084b286f"
    end

  end

  def install
    # Install the main binary (clang-format)
    bin.install Dir["clang-format-*"].first => "clang-format"

    # Install tool resources
    %w[clang-tidy clang-query clang-apply-replacements clang-include-cleaner llvm-cov llvm-profdata llvm-symbolizer clang-scan-deps].each do |tool|
      next unless resource(tool)
      resource(tool).stage do
        bin.install Dir["*"].first => tool
      end
    rescue
      # Skip if resource not defined (e.g., clang-include-cleaner < v18)
    end
  end

  test do
    system "#{bin}/clang-format", "--version"
    system "#{bin}/clang-tidy", "--version"
    system "#{bin}/clang-query", "--version"
    system "#{bin}/clang-apply-replacements", "--version"
    system "#{bin}/llvm-cov", "--version"
    system "#{bin}/llvm-profdata", "--version"
    system "#{bin}/llvm-symbolizer", "--version"
    system "#{bin}/clang-scan-deps", "--version"
  end
end

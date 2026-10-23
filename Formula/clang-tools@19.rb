class ClangToolsAT19 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-format-19_macos-arm64"
    sha256 "b75accd0e54b80394e157c3e81fd2b15aff38fac9d1ddc2d562a650d4e59b891"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-tidy-19_macos-arm64"
      sha256 "c2af3dbcbe8708ec4629e155bd79c5c7c5ed635b61605b3dfd70b9807f4e6fbb"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-query-19_macos-arm64"
      sha256 "4c4eaaa53e580516cb06aeb473c2d6799164602cc1f0b5c9c08f5161a3f5d865"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-apply-replacements-19_macos-arm64"
      sha256 "b98577e05ae6131e736170845a6c1ff1984a33df8e3db0280757ee17cf6c9c5f"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-include-cleaner-19_macos-arm64"
      sha256 "28458eda8cf4a00287098092834e89af8bf4c658e691acece0714a1857be876c"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/llvm-cov-19_macos-arm64"
      sha256 "e57e97d672318096e1bbc68c549773aa8d212579e7fcff88e286c16c6b0fda4e"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/llvm-profdata-19_macos-arm64"
      sha256 "facf4083f93729b9598121852f4a597e1c4517da45a27281ccba135bc4443805"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/llvm-symbolizer-19_macos-arm64"
      sha256 "aa29b7dea4214a766ca8d1d95059b5c1d6d7a2df5acff44eb056c62d4e2a42aa"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-scan-deps-19_macos-arm64"
      sha256 "fea26097fc232d8ce921c5a99335d73fe788b1d39b265e5db700d1dacde54807"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-format-19_macos-amd64"
    sha256 "1a516670f1aa19600412c572be9ecf2bd97166002cbad9132e5507e56ed5b75a"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-tidy-19_macos-amd64"
      sha256 "189ab766da41a275e0a113a5d40359bb6a76a557748d88ed524751919015f615"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-query-19_macos-amd64"
      sha256 "ffefb5b76117041149619704ad3a2946c42d5263a65f6495967109918db5ab95"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-apply-replacements-19_macos-amd64"
      sha256 "9055977e4c6b9276865b91f8386b4e0a9f8ec8f83f341caf5c5a759565f2a0ce"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-include-cleaner-19_macos-amd64"
      sha256 "2d8bd91aa66f08716a7815ddb99ebaf78f7d02b795343e458465d2621baaadaa"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/llvm-cov-19_macos-amd64"
      sha256 "b36dd4b1aeafbd26b0f32b8afe120aded6874fa6620fcac6bbdd5d4a55c00efb"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/llvm-profdata-19_macos-amd64"
      sha256 "c8e02ea59781e6b053b358dfa76efab5fedca3ee2e216785c4aae157d6f5e072"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/llvm-symbolizer-19_macos-amd64"
      sha256 "40fc50b8d7d084ce047fa3cb72535b3d913faf23e2afa4669d7710e6d013ad1d"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.0-3/clang-scan-deps-19_macos-amd64"
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

class ClangToolsAT20 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-20_macos-arm64"
    sha256 "e9ff95716f8574e36032b6a0b479bc83508210fddbb640c8850d119fb5b1077f"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-20_macos-arm64"
      sha256 "1b12e3873d5d585a10a798d28ae7d31e7e2a4f11e0ffce5dc0e6fe83c040c6ac"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-20_macos-arm64"
      sha256 "c207414710e6c24b4d0d89685aa926d6a853a97f25789fa176f0975028257e0d"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-20_macos-arm64"
      sha256 "3049c95b932566ce6418c58bcde5880c6dc8b47dfccfa228efcd13c533f8b4bb"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-20_macos-arm64"
      sha256 "f2098a6619131d28e8b2ccbded55554f4490cb1587080fc64d16c0316c7d9b3d"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-20_macos-arm64"
      sha256 "09bcf212d7e1f903cbd4ec807f92d60322afa6d8778a6168a4283b07bd2cfd24"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-20_macos-arm64"
      sha256 "69156e8b70aad895c44004bd7ecb0548c98150266b84982f256f4dec10a0494a"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-20_macos-arm64"
      sha256 "813b9e2e18a9c3634ce23f469ca7065cb6e95b9b995be3ed0853d2828d98c11f"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-20_macos-arm64"
      sha256 "e9afa55161f7e5c89187a4aed94a515bd074449c8b29b1a1afb110c79663095c"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-20_macos-amd64"
    sha256 "07e6049c6cee253e683b5534ead02a75eb48c354a470c8a480ed3e42d5508fba"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-20_macos-amd64"
      sha256 "a76b057c7112908d553a551849b897165662356c75100f0532f688b8020a72a0"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-20_macos-amd64"
      sha256 "b24f850991848329196ccdcadbaf4f69e6eabf2ff214aacbede1f0b3548976fd"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-20_macos-amd64"
      sha256 "b13269c14f6993aa896041dc1742478396ecbd041be811e98cb277d015d2c4ce"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-20_macos-amd64"
      sha256 "4489dd9beaf155bd0043e168e46004ee6c500c43a62986e67b9f49d283938926"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-20_macos-amd64"
      sha256 "d31dcd99eddd7f3bea7e0cc37afa45649e7b06bfae212bb96f832364b86c31c5"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-20_macos-amd64"
      sha256 "e57a38899fda4e5a2ae7d6617bc75e3180e3b378ce169795129c5b24cf54dca0"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-20_macos-amd64"
      sha256 "05df263f415804ad3db606e82a5015b0ab697ad40e62f3469b6302f1674a541a"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-20_macos-amd64"
      sha256 "5960c5a6199e1b245788871168eeef2533aa2e05fd31a8295d624f3150a4c500"
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

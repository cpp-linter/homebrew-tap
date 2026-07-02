class ClangToolsAT20 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, and clang-include-cleaner"
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

  end

  def install
    # Install the main binary (clang-format)
    bin.install Dir["clang-format-*"].first => "clang-format"

    # Install tool resources
    %w[clang-tidy clang-query clang-apply-replacements clang-include-cleaner].each do |tool|
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
  end
end

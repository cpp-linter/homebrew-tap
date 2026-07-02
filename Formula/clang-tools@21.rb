class ClangToolsAT21 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, and clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-21_macos-arm64"
    sha256 "d7902edc5c898eef96449ff302c3ce2123182ad908f2f01526cd549893e4a0e3"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-21_macos-arm64"
      sha256 "73497cb6e5f14c1b3ea8d5df7a906bc1c997e0a6936758d0b155a86e337d1406"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-21_macos-arm64"
      sha256 "cee5e17ac3ba810193931d998fe642732996fa574cedd48ca29733add16b5c4d"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-21_macos-arm64"
      sha256 "bc0e04f6d1dedca78c09d41799b5536fbdc2e669e3e6facbdb1c6dd8ce68dba0"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-21_macos-arm64"
      sha256 "405df3afbb3994f62ca797ece886f3f0c901d99ccaac65cdc00a16e45a12ca31"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-21_macos-amd64"
    sha256 "2d200fefa507f1ef95acdd3f497115e545b09362bf8c986ebd57c67349d56874"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-21_macos-amd64"
      sha256 "aead686afe5654692235ffa54db7580e9cac46914a023395cae6b9047629581b"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-21_macos-amd64"
      sha256 "ad4bf98cf71283bb1504bec3904a234ef5845c7c23ef6a395782c25fb7f3de5c"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-21_macos-amd64"
      sha256 "6b08319b887aa2034173dcb00838fa1308df2cc27248c7770dd1e7195c3524d9"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-21_macos-amd64"
      sha256 "b45633650da8cd63b75bee7c730d3f6c6c3696560bb6ec21c562150e67851b18"
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

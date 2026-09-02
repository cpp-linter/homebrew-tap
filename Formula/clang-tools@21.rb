class ClangToolsAT21 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-21_macos-arm64"
    sha256 "d7902edc5c898eef96449ff302c3ce2123182ad908f2f01526cd549893e4a0e3"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-21_macos-arm64"
      sha256 "73497cb6e5f14c1b3ea8d5df7a906bc1c997e0a6936758d0b155a86e337d1406"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-21_macos-arm64"
      sha256 "cee5e17ac3ba810193931d998fe642732996fa574cedd48ca29733add16b5c4d"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-21_macos-arm64"
      sha256 "bc0e04f6d1dedca78c09d41799b5536fbdc2e669e3e6facbdb1c6dd8ce68dba0"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-21_macos-arm64"
      sha256 "405df3afbb3994f62ca797ece886f3f0c901d99ccaac65cdc00a16e45a12ca31"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-21_macos-arm64"
      sha256 "39b38875b0ca895eb4f2f1d65660b0390a67f6a509433ddba5c4d4893d67ea64"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-21_macos-arm64"
      sha256 "a79833fab330c39763c0c5b99101c21970b75686823e13837ebfe8a302e72c8d"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-21_macos-arm64"
      sha256 "2f9e8c0d43a1ccae3218e5294858432d12767363a1048a489ef2aac2ce165637"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-21_macos-arm64"
      sha256 "f9e15ea255c49bf7a5161c2cf6da424258ca20262a272423dae0eecb318a8cbd"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-21_macos-amd64"
    sha256 "8a9576ccebc2bb454ede3092274d294ff5edb23b0e453359475c3da1eb0d0e1e"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-21_macos-amd64"
      sha256 "27aab84806c64f0b772644f2705c89bf9d5d083d48981610ba687f4da65cf223"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-21_macos-amd64"
      sha256 "642cc1d7a3a36f5452b9478402466fbcc066af0bd5c33d6da6e7ec4cf13d17a4"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-21_macos-amd64"
      sha256 "d5384b76ec5507bd92f8f5407f54ab7eea479954987295c42f021413765658bc"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-21_macos-amd64"
      sha256 "7ce759363dd56d0f27d0b8a756354ca0a235e857585aab345b2974f2b7a055e7"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-21_macos-amd64"
      sha256 "3c900a073cfcfd7d638f63fc6fe5ea9a3ff972feeabb695a11b3959d6e910e18"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-21_macos-amd64"
      sha256 "21ee4e3a139aa5d9b011a72c85a4174012198e438be0b25c5d08fc1c115b412d"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-21_macos-amd64"
      sha256 "1223dfc69af83bd02ea0c1704b22812e46c0503fc95cb63f27900f8c8fc960c3"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-21_macos-amd64"
      sha256 "f3a485d53b2a2441e1719f26e8a5f9d631d35e3ba791f326e20f62b18c28b98a"
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

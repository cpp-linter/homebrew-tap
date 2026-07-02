class ClangToolsAT18 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-18_macos-arm64"
    sha256 "8c30984fe0da9ce249e6f05099f83b3fd976ba3ed0f2a6303fec9151722ebb7d"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-18_macos-arm64"
      sha256 "187ef171401d48f3ab3d44bf18052f0353be33c8dbf02adf4fa03c33ee2ef570"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-18_macos-arm64"
      sha256 "4bc6e012f2c0b6df79c69762ba6294630cfa5466fdf6554d67f70570e2f8d5fa"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-18_macos-arm64"
      sha256 "71d258e6a406e14d114298079b2b324413a353c00b1d989b88f664bdf5533b22"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-18_macos-arm64"
      sha256 "70d0b8f7f4c8ce09e1ca40cc428839c80bdd9a162401dfe7e19bf41ea94a481f"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-18_macos-arm64"
      sha256 "1da632171ebac83d1b24917b573c9ce220f3236fb3e32ec69708f99fbcb719aa"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-18_macos-arm64"
      sha256 "a3b49b8308c07dda0f62ceb8368cdeba664fc96b526bc91af303ab6b6b4d1cc9"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-18_macos-arm64"
      sha256 "0b83466d36c4ecb605132274e157e9fc76827eb457b8421e26226d2aaf3192f9"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-18_macos-arm64"
      sha256 "a71f6e94d694012135beff4f540a4c82b7da9b84a94b35b73a63a5390b6737cc"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-18_macos-amd64"
    sha256 "7ab1ac106c9a47464a9d26dec6d48142dcbdef61b6193a4785fa5f70cde62019"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-18_macos-amd64"
      sha256 "7ebd9e1efb35889b0b2756c6dbe3a9de7da3a625617f9cbf5180b38135086f44"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-18_macos-amd64"
      sha256 "1715f669c2e6bc1599b80f6253b1f0a356f212457d0eaeaf42433c480c875a4f"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-18_macos-amd64"
      sha256 "2b09869aebeec7910ec29550fdcb485f4e872743138517b9026247cda55ae294"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-18_macos-amd64"
      sha256 "18c4accf4c50c85ceecbe3c7fe2cddecf431ca65bcb646e5e4b05c75a2f443aa"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-18_macos-amd64"
      sha256 "73987cf4564678cf0606c81085cdf4c530acc0e4940cc7234c8b96ecadc0fd73"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-18_macos-amd64"
      sha256 "62b7ab3ffc436722d1ff12173c38c6cbbf349b69ae480f94ec2cf7bc04bb717d"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-18_macos-amd64"
      sha256 "a7bd08ed82ee592b4e924e63786e398aa0c20a43647cde555ec79be745b92782"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-18_macos-amd64"
      sha256 "99e3bf1cd2536cd99f48dd226520f3377db6bb873853cb8cf20822a243ca4da9"
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

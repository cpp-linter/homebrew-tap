class ClangToolsAT18 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-18_macos-arm64"
    sha256 "8c30984fe0da9ce249e6f05099f83b3fd976ba3ed0f2a6303fec9151722ebb7d"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-18_macos-arm64"
      sha256 "187ef171401d48f3ab3d44bf18052f0353be33c8dbf02adf4fa03c33ee2ef570"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-18_macos-arm64"
      sha256 "4bc6e012f2c0b6df79c69762ba6294630cfa5466fdf6554d67f70570e2f8d5fa"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-18_macos-arm64"
      sha256 "71d258e6a406e14d114298079b2b324413a353c00b1d989b88f664bdf5533b22"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-18_macos-arm64"
      sha256 "70d0b8f7f4c8ce09e1ca40cc428839c80bdd9a162401dfe7e19bf41ea94a481f"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-18_macos-arm64"
      sha256 "1da632171ebac83d1b24917b573c9ce220f3236fb3e32ec69708f99fbcb719aa"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-18_macos-arm64"
      sha256 "a3b49b8308c07dda0f62ceb8368cdeba664fc96b526bc91af303ab6b6b4d1cc9"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-18_macos-arm64"
      sha256 "0b83466d36c4ecb605132274e157e9fc76827eb457b8421e26226d2aaf3192f9"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-18_macos-arm64"
      sha256 "a71f6e94d694012135beff4f540a4c82b7da9b84a94b35b73a63a5390b6737cc"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-18_macos-amd64"
    sha256 "fbae1962f22d5d42e2f7731e521c946461baf8bf64913ef2e874e5dabbe19c0e"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-18_macos-amd64"
      sha256 "3f12b4376aeff8ed2f7fb5946370afd0122c349b6a47b41faf3c9c2b956c9970"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-18_macos-amd64"
      sha256 "1242c5308a2f6874377e930fca5c513297ac996229d2c779564534d4f78dbfc5"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-18_macos-amd64"
      sha256 "8116d2830c413d68c4431d038c5a5f33efaf0d0c61a59e93c1b3ea7852d2cef5"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-18_macos-amd64"
      sha256 "d3258131494c214d8629db541e542dd2af92116eb8b171c11298dcd1527d4b66"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-18_macos-amd64"
      sha256 "e4f7f87d7d020827681acc8bcc45a229264c4681a064721dd9b5c78002c6dc27"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-18_macos-amd64"
      sha256 "edb5fd6c78d99fc1c9c1e5ed25799341d754f04ad317ed978621a06297a08716"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-18_macos-amd64"
      sha256 "a8471ca8a5e9230e4410105e06be55a55907098d3618fd94f283869513dc4e62"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-18_macos-amd64"
      sha256 "9f99b7e892ded95ebce0b5ca3932773eaae82a2f52ff95a8a89359a7861db02b"
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

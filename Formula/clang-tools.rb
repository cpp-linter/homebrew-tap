class ClangTools < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.3-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-format-23_macos-arm64"
    sha256 "5058dd0c95efa80571676aa9ebf91283d12e50231018e00d423ccdf211bb7999"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-tidy-23_macos-arm64"
      sha256 "30df9e18d61c9947004adaf5e6dfa40067818ebe9e2af8b4b8ac8c8515b1f59d"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-query-23_macos-arm64"
      sha256 "038c36c249bb9353fa652383b402f1f3287e21ac256fe4762c8b33b3755d7342"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-apply-replacements-23_macos-arm64"
      sha256 "3f3df2d1df8beb15b02594942eb0e0885602810cbd4cfd4433742ef168bd03bb"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-include-cleaner-23_macos-arm64"
      sha256 "b3de897b49598172e1ba689ff1c18bcbe94f78bd02cbe368bd4ea08de36e9eea"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/llvm-cov-23_macos-arm64"
      sha256 "4dc36632b68c8da6315440dd029d5c86694325e17c4f2537675c3bd22a73f3b9"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/llvm-profdata-23_macos-arm64"
      sha256 "05557d23dd2e25b7c009c27fa3f4f83140ff2e29e128c36fc39802024753ef77"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/llvm-symbolizer-23_macos-arm64"
      sha256 "760dd07acd802911207f55ecda190ee1b9b5a8f7ea96a7976604a52486c63103"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-scan-deps-23_macos-arm64"
      sha256 "5d834cc4cdce2bdc4b1741d23f90fc5621bf90a4a84470386c800dbab7e7ac8a"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-format-23_macos-amd64"
    sha256 "edfbdfaf80e2e04431ea47397f331e6ac16e12eb7a75c579a70cfa848cd3459c"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-tidy-23_macos-amd64"
      sha256 "8d82c0da4bd4fad8b02b9575d18cce72aa09fbe5aba0e076970882c4ca11d61c"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-query-23_macos-amd64"
      sha256 "c5660968ca298455d94a5eda512061756eb6c31d0397d63bd48b1d7bb72c41e7"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-apply-replacements-23_macos-amd64"
      sha256 "5c804b936b8f533bd378639fd6fac84f84e445982c13415d5b25d4b61cf23f44"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-include-cleaner-23_macos-amd64"
      sha256 "04995be55ada652197a946a8947e4dfe36723959c2ab12b53430d1e588ab010b"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/llvm-cov-23_macos-amd64"
      sha256 "7bf7eb87f95cbff046aa9506c93bcc95bfb31c182895a33cc8a7fcacbe6d16af"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/llvm-profdata-23_macos-amd64"
      sha256 "e5f2558042d597841e63e6629f32b76ac708912c17dc11557cf8af113f58d3ee"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/llvm-symbolizer-23_macos-amd64"
      sha256 "12d81b9f97a494fecadac7868f10d3f4b3f3e909e402ff1ed643a58fd6409613"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.3-2/clang-scan-deps-23_macos-amd64"
      sha256 "05309e401bfdb37c759f44e22bd082c3f3e9f7bbfa08520e438c2e4bddcea08b"
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

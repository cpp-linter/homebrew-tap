class ClangToolsAT20 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-format-20_macos-arm64"
    sha256 "4d96b72d1c3d5ae2ffd6c9f6093d382095eabe95d1bb8dd9d19e080e34b41591"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-tidy-20_macos-arm64"
      sha256 "28ff0eb63470095eaaa2a9e21633c14e27b4179c7bdc908310f37bafeae10e53"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-query-20_macos-arm64"
      sha256 "c51b4dc444a8619da530538ba3a4f14c29fd89bd371f8eb98ca0ca12e8046039"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-apply-replacements-20_macos-arm64"
      sha256 "4b86b10a5ecbc5c86d734f68bd40cf2be817e88fd7d087cb9bbc2d1d21ab8b6c"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-include-cleaner-20_macos-arm64"
      sha256 "586eb82ad2b0eae445cca48a6b097e83a3c1afc013a7a3f33ee8936bb98fe3cd"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/llvm-cov-20_macos-arm64"
      sha256 "2bd1bbd7b96a62db9470953651966969f501af5a00f916cb73ac2a870061b8ca"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/llvm-profdata-20_macos-arm64"
      sha256 "93caf04aaa045d87baa8d2992b6f848589bcb193d7d48fe5106ef68d6941f01a"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/llvm-symbolizer-20_macos-arm64"
      sha256 "1883010613bbe0ca055edc8c0442a1d5d8691f45828557775400e38e167be1e9"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-scan-deps-20_macos-arm64"
      sha256 "90994fd8661a847ed686b24fdf9640b6d94e3ed68e9c43b9a0493a0adf57fb77"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-format-20_macos-amd64"
    sha256 "4c54a142ace7913ccd2d10cc20f4f0f997c2ca288278ca2e08dd3afb802aa768"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-tidy-20_macos-amd64"
      sha256 "6e4055af36daeade3d48c2a77e00772292a82cfb5fcc053f1936f0ba5945d8fb"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-query-20_macos-amd64"
      sha256 "3e737973ba432b0fe30cbf8f678982f13b2826b8aca0eb642ce6c16584890333"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-apply-replacements-20_macos-amd64"
      sha256 "e3223bc439ee0b9ac1516f8e1900eec95a4ce4f38956b0dda097d0c9c59f4804"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-include-cleaner-20_macos-amd64"
      sha256 "526631502c9acaa6a8392c1aa7faa7dafe9826d662d4aaccb810493645f35883"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/llvm-cov-20_macos-amd64"
      sha256 "72588b0ef696a7d61d74bbc04f3317c975132fb92552f4a8afb1c6a236de3925"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/llvm-profdata-20_macos-amd64"
      sha256 "56550da66d2fc76b8bea1da598242dffc8e0abebe03ac6ff9fd51942139380bc"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/llvm-symbolizer-20_macos-amd64"
      sha256 "e36634644f91b809cab97b3c8b8f030d36e4af27d30ea4ef75be669233e87993"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.0-3/clang-scan-deps-20_macos-amd64"
      sha256 "0a404e8e47fbe9ac28785229e5d8e5968b182602c3500fc239df87f1388a8e36"
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

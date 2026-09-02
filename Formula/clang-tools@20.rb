class ClangToolsAT20 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-20_macos-arm64"
    sha256 "1722bf4194299e688c733812a9afb29d78cca84a20d53489659bd62eaeca7a34"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-20_macos-arm64"
      sha256 "d7c1f4868601c2f4738c4e2fc0d7023711eaf1a65effa507260111bc5fac6a01"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-20_macos-arm64"
      sha256 "c66edf20497e303fab2509dc181b0932549b0b3e153be307306f70e005634ba6"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-20_macos-arm64"
      sha256 "386f95f0556aafc39c8eea4e7ca6c300a7659ff05f5ef4acfe7d444bb54717d6"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-20_macos-arm64"
      sha256 "c457b0658bd403294ee58c562ade1bbb6ee0412c6fb6c732b8f49f6a72ea35f5"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-20_macos-arm64"
      sha256 "0a0f96f6a34217e4ead674b3a5a8fd3ddbe59dcfd490f9c8a82606c63d863ebf"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-20_macos-arm64"
      sha256 "b75697cac8be3d08daae9665229ca134306cf375617ab0739f9f8ade22a19389"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-20_macos-arm64"
      sha256 "a9a279d2b2093360cbfe687689f27d507fc88eac5301f5216847cce666c4d925"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-20_macos-arm64"
      sha256 "0a9ee8a969ed67c924d9e2b2f5f1c75311265184467249d7016c9260fc5340ae"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-20_macos-amd64"
    sha256 "4c54a142ace7913ccd2d10cc20f4f0f997c2ca288278ca2e08dd3afb802aa768"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-20_macos-amd64"
      sha256 "6e4055af36daeade3d48c2a77e00772292a82cfb5fcc053f1936f0ba5945d8fb"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-20_macos-amd64"
      sha256 "3e737973ba432b0fe30cbf8f678982f13b2826b8aca0eb642ce6c16584890333"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-20_macos-amd64"
      sha256 "e3223bc439ee0b9ac1516f8e1900eec95a4ce4f38956b0dda097d0c9c59f4804"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-20_macos-amd64"
      sha256 "526631502c9acaa6a8392c1aa7faa7dafe9826d662d4aaccb810493645f35883"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-20_macos-amd64"
      sha256 "72588b0ef696a7d61d74bbc04f3317c975132fb92552f4a8afb1c6a236de3925"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-20_macos-amd64"
      sha256 "56550da66d2fc76b8bea1da598242dffc8e0abebe03ac6ff9fd51942139380bc"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-20_macos-amd64"
      sha256 "e36634644f91b809cab97b3c8b8f030d36e4af27d30ea4ef75be669233e87993"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-20_macos-amd64"
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

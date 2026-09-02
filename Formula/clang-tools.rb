class ClangTools < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-22_macos-arm64"
    sha256 "350c8ccdd232912a6abbcb0394dd2ff4118196dcc5ac31e125404787588bc686"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-22_macos-arm64"
      sha256 "4d0bc713af5c14d75468547f33e572be316c8ad317351c60cc6ff8c4d9b9f166"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-22_macos-arm64"
      sha256 "b7e9f3ccecd5f0dfd8550df0b6f59e554702148bfd630b068345550a8dae945a"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-22_macos-arm64"
      sha256 "6b714d0372b2fe5f267338d455f38d722497b3a44ac353892cdb87a276af6eec"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-22_macos-arm64"
      sha256 "62e313e8970e66c346699c6464b03d03df2bd4e67d8c230e3c347bf869d96ec8"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-22_macos-arm64"
      sha256 "4592b8cebe0e1f72ba31d85d5a1787e5aeded5e5ba7d6d42375a9e80a78a5d04"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-22_macos-arm64"
      sha256 "59a5c3e16d277961b2ba1e8870a8610c8827ae6572b6a7c171269cc64bf6db8d"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-22_macos-arm64"
      sha256 "f993c8570d26f73af65fa8c09de75d2f8856a14e9a4526a940f3ab0a86538020"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-22_macos-arm64"
      sha256 "67d0ba17dffcb50b1c8ffdc9316dac4333549862357b9e90d2dee8bcc084a968"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-22_macos-amd64"
    sha256 "2baa8632cb7c8a52e5e552f53591bc16ae67c476c13503dc518803b1b6030abe"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-22_macos-amd64"
      sha256 "5ae17609aa6919d1087700921e10a2cc7bab9ee955022ad0ffc21b1342ac04e6"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-22_macos-amd64"
      sha256 "846ff356207ae799d8e9c57db4c461de08ef07089d73ccf565a8a0a29da02536"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-22_macos-amd64"
      sha256 "ece6722eefc69020585ff43a18bab34817f9a40a23265d68d9713184873de275"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-22_macos-amd64"
      sha256 "1dcc52f3dde9e9c1d3b6d48d0675a9f576d33a107a01f61b3235addef8e608f9"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-22_macos-amd64"
      sha256 "d278591768568a4c1075f64d1844e0735969d8feaa91222eafca4edc15f07487"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-22_macos-amd64"
      sha256 "378789f365b1246f615e99ae5c882a7db6fa45987779b012638d3347432f098d"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-22_macos-amd64"
      sha256 "c1adc3a89f9d2f02f986ff75555d6628e74a5d3cc8a090ddd5e4c6b7c96827fb"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-22_macos-amd64"
      sha256 "a161cdb08b46557ad18a539181ea0465372d41565aa21dd91270f91aa3e21569"
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

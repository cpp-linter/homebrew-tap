class ClangToolsAT20 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-format-20_macos-arm64"
    sha256 "2f452148f2117583c40bcf6b7751188985e821b8f967ae366798de69f34b8ab1"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-tidy-20_macos-arm64"
      sha256 "cc17725536e15152aeecbcd6a3d64232429a3714df7b3330c5883ec9c6133799"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-query-20_macos-arm64"
      sha256 "eff6b56a3b0f7cd7f7cc540ba26ab30173f20f2c60f68d89d0312fd696bbe1be"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-apply-replacements-20_macos-arm64"
      sha256 "1343e932d54ab9331f61ede52a7a8042c38ebc5e0e0ae8826a392e7919ad3df5"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-include-cleaner-20_macos-arm64"
      sha256 "d6c30cd76db85235fba884734d7941f545a4f044d7c789ae534d8c10dcbf50dc"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/llvm-cov-20_macos-arm64"
      sha256 "c05659ecbd9f99f7334d4445eae0e4f5a09058336a1a5c018d01a690f7852dd5"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/llvm-profdata-20_macos-arm64"
      sha256 "022113e468230ba7e7972d8544a924b567c1d94bef4e8ffaa0f9d4e158412f07"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/llvm-symbolizer-20_macos-arm64"
      sha256 "de71cea24c23ec9f8a4f89bbecb1b794e087adcc1941783e8bcf108ed20b54c5"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-scan-deps-20_macos-arm64"
      sha256 "ce2d68f4a3e7c4b7462a5837d46d989fee87e002e098b52ccf142a0cde3a369f"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-format-20_macos-amd64"
    sha256 "686f002efc41fc496b41e1eff7056d969e6eafbaac3f69a341c833ea1d1a3fc7"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-tidy-20_macos-amd64"
      sha256 "617e08b7744604ecd0fb28c8ee5670eda1c0a5fd9a8dfefc953247685f40a476"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-query-20_macos-amd64"
      sha256 "bb71c3b714fc10003bdf275842a34a6469299e90247e158ed5d28c40de5a6953"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-apply-replacements-20_macos-amd64"
      sha256 "ab39d045ee64a4dff72a63ec5c91dcd975e3b653d46d2b2f7845a46f034b05f6"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-include-cleaner-20_macos-amd64"
      sha256 "d060e415b6ae661f3b9a26fdc14263ffe344100283f4da50ba3f00a64c224cd3"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/llvm-cov-20_macos-amd64"
      sha256 "9da50e15053a6b618a5cf09ea6e8c197f7b2a500542e1be618c8fb4dabfccb8e"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/llvm-profdata-20_macos-amd64"
      sha256 "68e95fa75477e252fe99ff8d2cbab3ddf7a980a193aafa2dc3a6429f2ba32061"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/llvm-symbolizer-20_macos-amd64"
      sha256 "55366c0093442d67606fdef7ab9f9636c8c32dcb2da81fc656a65af759e0d0a9"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8/clang-scan-deps-20_macos-amd64"
      sha256 "5cb99bc62d51348176e8985bd1a0b0f7a8746816ba9e0a3dbdaced520bc61d82"
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

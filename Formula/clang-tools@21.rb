class ClangToolsAT21 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.0-3"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-format-21_macos-arm64"
    sha256 "ea0d9c95188558ce25bf882365f988cfa606d5feefa27d3c71ce5b5a7457fec4"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-tidy-21_macos-arm64"
      sha256 "f7e3b4862b892de3c4512094bc18cd2403fa63f74bf8080b3d90cf3f5f95325b"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-query-21_macos-arm64"
      sha256 "20995d0448e29fd707e11cf32a77e371b79de8b23e03f097a07ac98508b0a753"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-apply-replacements-21_macos-arm64"
      sha256 "317e0f92e87bc0b34fd51b78d582495472e4e7128bada4189b7ede103d8ef18c"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-include-cleaner-21_macos-arm64"
      sha256 "3c0e6961478877e11f8f40f962819db4410737b986392e1d89d11ab39e016ced"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/llvm-cov-21_macos-arm64"
      sha256 "1c7ad2dfebb6c76034541835d8bb88ca7ef2db8050ac61f1305153420d93f933"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/llvm-profdata-21_macos-arm64"
      sha256 "2c2312b5137249a27699da356513d5df9953312f3a1154f335479d2e00b4e272"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/llvm-symbolizer-21_macos-arm64"
      sha256 "26029816ef5ba50c52c7e2e18f2e90e716f8fab614652852a9d8a1c843e7cccc"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-scan-deps-21_macos-arm64"
      sha256 "b142b6464f9784b9a0145c98c3ec42084c5df109c08297c907d66a90c7be7a26"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-format-21_macos-amd64"
    sha256 "8a9576ccebc2bb454ede3092274d294ff5edb23b0e453359475c3da1eb0d0e1e"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-tidy-21_macos-amd64"
      sha256 "27aab84806c64f0b772644f2705c89bf9d5d083d48981610ba687f4da65cf223"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-query-21_macos-amd64"
      sha256 "642cc1d7a3a36f5452b9478402466fbcc066af0bd5c33d6da6e7ec4cf13d17a4"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-apply-replacements-21_macos-amd64"
      sha256 "d5384b76ec5507bd92f8f5407f54ab7eea479954987295c42f021413765658bc"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-include-cleaner-21_macos-amd64"
      sha256 "7ce759363dd56d0f27d0b8a756354ca0a235e857585aab345b2974f2b7a055e7"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/llvm-cov-21_macos-amd64"
      sha256 "3c900a073cfcfd7d638f63fc6fe5ea9a3ff972feeabb695a11b3959d6e910e18"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/llvm-profdata-21_macos-amd64"
      sha256 "21ee4e3a139aa5d9b011a72c85a4174012198e438be0b25c5d08fc1c115b412d"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/llvm-symbolizer-21_macos-amd64"
      sha256 "1223dfc69af83bd02ea0c1704b22812e46c0503fc95cb63f27900f8c8fc960c3"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.0-3/clang-scan-deps-21_macos-amd64"
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

class ClangToolsAT22 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-format-22_macos-arm64"
    sha256 "7c8bc05032a4f90c10ed945a7189a7f0602218183a84666b37a2174cd63cb99d"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-tidy-22_macos-arm64"
      sha256 "6ef111bee4e663fea1cc5a6e4634be48442896706222200a15da2ad4b782f84d"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-query-22_macos-arm64"
      sha256 "c68fe31cb626f19dfe24a18e4e32136af0e9c5920d34048fac61212c135d253b"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-apply-replacements-22_macos-arm64"
      sha256 "ad93fe72e676efba7518628180d941a6ac0674cdaa24dd8ef56e3f000a765c4d"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-include-cleaner-22_macos-arm64"
      sha256 "9a6602fb859c1e593b5bbed0a79c4171960c64d0cdf0df71aacceb87f491f9c1"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/llvm-cov-22_macos-arm64"
      sha256 "3986cf743790376406ba99b1020d8e00f028ed023aa64f8fde47bad6794fc3bd"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/llvm-profdata-22_macos-arm64"
      sha256 "906a2bd0634a1f4337b879542c4a3974f8d6ba86fec40af7e6fc11c9d904d3a9"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/llvm-symbolizer-22_macos-arm64"
      sha256 "83996f38a9c356dd6533ec2a1cb1b5761807e3febf8f00846534b38ead7443a7"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-scan-deps-22_macos-arm64"
      sha256 "1ae23f5c5dc115f8360a804b9378d19826c86a82145d3869c9e17999e534ace5"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-format-22_macos-amd64"
    sha256 "b9d3106e7d0f06550a1014adc4634cda6a94f1f6b761c50b01a7d73a55c8ec3a"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-tidy-22_macos-amd64"
      sha256 "499731580ef04ca250a2e218c23ab94d94e241d479b7106266eea1af56771cfe"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-query-22_macos-amd64"
      sha256 "2ef2587ba60262835454f3d5c53d8b9db51b57209f4331df2bf7ff0a38fe9fb3"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-apply-replacements-22_macos-amd64"
      sha256 "431ef5163d69c54aeba3fa28679382efec8350dbc248e3e0cbbce2df9a8594d1"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-include-cleaner-22_macos-amd64"
      sha256 "595b49dc7e899ef17e552c28d03e1851a82cc39d757c70e91539f21c42c2af31"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/llvm-cov-22_macos-amd64"
      sha256 "45ffc02717627a416c230093a1a31f71dbc5994c4ed2f93a0dff52ff9e09b173"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/llvm-profdata-22_macos-amd64"
      sha256 "b5acc4f103418298f9ba656c9b1283bba4c7bfd4825e2b09fd07b96344bae50b"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/llvm-symbolizer-22_macos-amd64"
      sha256 "0ce054ccfc5c29ff79786dbfe5dab4c755cedebe5c85ed2a930e98a44e3394d7"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-2/clang-scan-deps-22_macos-amd64"
      sha256 "d74de32f7ed031d47eeb8a3ca8f62f1257e40942992882713ee4b42889ec6a9c"
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

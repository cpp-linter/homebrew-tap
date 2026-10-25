class ClangToolsAT19 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-format-19_macos-arm64"
    sha256 "3a3d15b8dfa303b1a2aed7d159407d6e84bcf2cae931cabec80a9a739eb74381"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-tidy-19_macos-arm64"
      sha256 "4650c275df721ef884d5a3c737b37e2dcacede0fb3f8d8123c2d0b8ef161a9b5"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-query-19_macos-arm64"
      sha256 "f6503fd253c002aa70363d2dfe8d94291aff0c81495bcb9bf2efbfbdb55604ff"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-apply-replacements-19_macos-arm64"
      sha256 "ce9bf793b731e5b65125dac3690f008c919ad0f8d7fa6a854fb1453413b1a285"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-include-cleaner-19_macos-arm64"
      sha256 "438a4cfb8868b6650c86110e70a0cc5a921562bad9422f7824ca7633c1680964"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-cov-19_macos-arm64"
      sha256 "de2eb0cf0a8bf02d12754830a58aafbb015a40b62cfc0a0a31c5bfd0dd85409e"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-profdata-19_macos-arm64"
      sha256 "6c546145a65c98efc1d93e3ba6699abd4dedd400dc5a314b79a2583fabbdb029"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-symbolizer-19_macos-arm64"
      sha256 "7cd00b9c39bb264259a29a26c4e6a76c04b2f3867b2a0bd8982ee9e982f1c5f5"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-scan-deps-19_macos-arm64"
      sha256 "25c28a06304d513647d86ca782efe87eea88418a2434b4104f1971c0c95a3759"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-format-19_macos-amd64"
    sha256 "5113906452255930b0341c3ebc0be2f70159676219c3ab152ee68581cc6b8a41"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-tidy-19_macos-amd64"
      sha256 "196f0cf12e045c4b394b86a5975276453d81f8998a7d6aeee6f99754b0e356f3"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-query-19_macos-amd64"
      sha256 "ea7f50f7f10df27a6e6571dd2ba0e262bc1d2176ed3529c563d4017ddb6c7a0e"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-apply-replacements-19_macos-amd64"
      sha256 "a46e4bbbb7dc0b8cc8b4f41a5164137581a7bf15164baf5fb8d928971b85db00"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-include-cleaner-19_macos-amd64"
      sha256 "795815fe9e4a21905f8d3a6632de7e90aceeac32cd11efad364025a035a627b5"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-cov-19_macos-amd64"
      sha256 "2f80f1d35d6624de876956aa2d19ef40661f5b922565fbce5d50d177328a4f61"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-profdata-19_macos-amd64"
      sha256 "b8929ec931e19863970c247513ba64c62bde2bf5eae9b0852c5e0dc44f2cc8ee"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/llvm-symbolizer-19_macos-amd64"
      sha256 "cc6ed0b8cf2402934b3083a36e72a2962d01d61243511bb1c2332617b442ad0c"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7/clang-scan-deps-19_macos-amd64"
      sha256 "34040c5de87cab745942ce9679ecd0ff890b925b88a767b8ff0ac1f10a383d15"
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

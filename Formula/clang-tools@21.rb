class ClangToolsAT21 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, and clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-21_macos-arm64"
    sha256 "f26e8b315b4f85db37c6b0b55be3fdb6940562b8cb1f21d25e272f7747a3a263"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-21_macos-arm64"
      sha256 "7e44894534ccaa37859bec0abd872ab9770d0c974b2f8de532445a9b0755c328"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-21_macos-arm64"
      sha256 "1cea78a6dc1f50ed1ad57fd217d7d6ec48bd63ae7719ef459e9d01368aafef82"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-21_macos-arm64"
      sha256 "8631f2e45b4d1e63726ea496b684569cc396a5153ae117430b7b20649d6fb48a"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-21_macos-arm64"
      sha256 "6f585c4973d1889bbdd1f93faf6c9ee265567f6f7ddd68a8828cf43f44c23f7b"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-21_macos-amd64"
    sha256 "06dc259924fb2e46f1f046d0134b96e4c6ecad4e155f5b53edea3394c6b47ff9"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-21_macos-amd64"
      sha256 "1fc65ca255b56b6206099036ce7ae474cef4308f6f495878b61182e2c1d03bac"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-21_macos-amd64"
      sha256 "9002414bd5165bcea8fe47fa5140bba8686b47a2d92484ea4f01b863bb996472"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-21_macos-amd64"
      sha256 "6a8235d886c36ee43525c4e31d1a9eb23b4bec86f2215a068b0a0cf9849cbd06"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-21_macos-amd64"
      sha256 "504aa6314df7d8a0b96a792648523b8033a802bf533971bdae6bea686fd57762"
    end

  end

  def install
    # Install the main binary (clang-format)
    bin.install Dir["clang-format-*"].first => "clang-format"

    # Install tool resources
    %w[clang-tidy clang-query clang-apply-replacements clang-include-cleaner].each do |tool|
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
  end
end

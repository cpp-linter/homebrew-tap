class ClangToolsStaticBinaries < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, and clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-22_macos-arm64"
    sha256 "bb228a2fa1b6789cbd0a7e3c942bff94fa43a4cd9ebfdb94ae06ea82376b9af5"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-22_macos-arm64"
      sha256 "4a21cb5fb9c5e56a164365c33aae9da5f72f2e5e2233c56e8e5a85b405f63e5f"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-22_macos-arm64"
      sha256 "c947b5746cf2165aac01082926542c2bf7c5da01cf6e85db0bc660786ef64f12"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-22_macos-arm64"
      sha256 "f16373970c89df9bd02f3cc8cc0dd8dbf6936ca9dd7ae55cedb1628519cfc96a"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-22_macos-arm64"
      sha256 "022fff4eb4e8fbcd87c17671aec999914293e3f1f5a17cdda86186e2092d75e8"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-22_macos-amd64"
    sha256 "e947704d428091337310b86ea07646cbbb1849b6050a4631dbb0b5b656731be4"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-22_macos-amd64"
      sha256 "15acd9d97ffe05264771aac944f9afd348107e9a2db95159653e7793514c29b4"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-22_macos-amd64"
      sha256 "b7137c6a00b6c91d48500291d2d6bb22d62eea9b1a6817577590fcff2db7d0c6"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-22_macos-amd64"
      sha256 "cb04db3abb8542c7e1342432e0ae37e24a10144e284670b71aff3d2f0725b97a"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-22_macos-amd64"
      sha256 "1cbdf9bd7db6644249e680a938767f5b663e6497a0b005d44088935a2ca453db"
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

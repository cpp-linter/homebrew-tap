class ClangToolsAT19 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, and clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-19_macos-arm64"
    sha256 "59e946a00239de512c573509a036adb635441ea9c4ee3f8e5e0bf47fb4a2186f"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-19_macos-arm64"
      sha256 "f9bb04d3d068e58ee5310cf860e56293b0c07f988e0b203040f62d5821f3cc33"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-19_macos-arm64"
      sha256 "a6c0cfa631f2e7b3a1c695f2086750d93a84603ac31d7e49daac853bab39c839"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-19_macos-arm64"
      sha256 "6b4e93fb1a6f77994142af0f764279156bcf13473b92f7c087e54342a48299b9"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-19_macos-arm64"
      sha256 "5a3342cfed0ebfa15a3d38d0f04e5511eaf74d27a3f0aec467fb7ffb63f511fc"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-19_macos-amd64"
    sha256 "637c43e6aec804f806fc555eb5f2eb6d5819fc24dc96d1854ec36e061c492618"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-19_macos-amd64"
      sha256 "3e4be9c6ecdfeed6732b2fa4b63ed80b3aeead126e9414d637b207f2f9485e7b"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-19_macos-amd64"
      sha256 "6ee00758b8ab054da66f36118c029adfdbd8055945cb87afc683e46e8b93fb10"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-19_macos-amd64"
      sha256 "6b62e12fa1a39a07b0c6b0492db034c6535e4711c77e6e6e75e32c77dd546460"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-19_macos-amd64"
      sha256 "511289dddbe2f6cf141b942e5289f120e99a232e6fe9db9ec1452a8b820470d8"
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

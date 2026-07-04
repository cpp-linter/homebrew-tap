class ClangToolsAT19 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, and clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-19_macos-arm64"
    sha256 "682cdda5a194251cde7a5de15dce02568233fd21594339936d47a78b4bece335"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-19_macos-arm64"
      sha256 "73febf03a21625301154e0951491164a59e5c8f1e0a1dee39d9cffb26a21121e"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-19_macos-arm64"
      sha256 "234be822b78943f814ba9591805a117f2d46f0c59c76e3c96dc998f00587dc3c"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-19_macos-arm64"
      sha256 "6b59690a2279e1fade60444b011a0f49a43516b4d378cd1e0b39b7a1207be958"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-19_macos-arm64"
      sha256 "6fd5b53876baed52ad16149f61eccaee77771bc00c80f6eafb690dfde1778efc"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-19_macos-amd64"
    sha256 "637c43e6aec804f806fc555eb5f2eb6d5819fc24dc96d1854ec36e061c492618"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-19_macos-amd64"
      sha256 "3e4be9c6ecdfeed6732b2fa4b63ed80b3aeead126e9414d637b207f2f9485e7b"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-19_macos-amd64"
      sha256 "6ee00758b8ab054da66f36118c029adfdbd8055945cb87afc683e46e8b93fb10"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-19_macos-amd64"
      sha256 "6b62e12fa1a39a07b0c6b0492db034c6535e4711c77e6e6e75e32c77dd546460"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-19_macos-amd64"
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

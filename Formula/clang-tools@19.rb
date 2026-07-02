class ClangToolsAT19 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
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

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-19_macos-arm64"
      sha256 "b517989777d8877f81f2ae2414f9ed15e1d6868862198d3a20bf7638ce9b8bc3"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-19_macos-arm64"
      sha256 "e12b9a1f5161324bf88a3d75af78106067ec2641b858828895965b1f6334f82a"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-19_macos-arm64"
      sha256 "7d8ee2da65742ac177e19c9b14053fce6de0598e1271f9c27f67b2a150daf86c"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-19_macos-arm64"
      sha256 "6ffcf61496b720ecd7a710d1e95d1af930016b1976c26db47bdeb8facc5fabc9"
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

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-cov-19_macos-amd64"
      sha256 "4c174d947dad3c9e1da25ba9064e1cd26247b8af8cf548eb58874e86a5a77c9e"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-profdata-19_macos-amd64"
      sha256 "97fd096cdd2a5fef5cda5638212d8fd17da4f2bb3139d28be34620ce203f36f6"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/llvm-symbolizer-19_macos-amd64"
      sha256 "6ae448fa0fb709ffd91e4b2a7cadac89b29c9251b27534342034e9fb856a6dc4"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-scan-deps-19_macos-amd64"
      sha256 "1be51f8d70402ff9edebddc3001a75aa2d660153db7d394aa40c3a37264622f5"
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

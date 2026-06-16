class ClangToolsAT18 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, and clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-18_macos-arm64"
    sha256 "4cd7c6a860ab0b9a0cc60c59159c93874b85371a04ccce1d8d4b7b1fc766bea8"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-18_macos-arm64"
      sha256 "039dab48388b56f1157925b0838802c5d1d72c90f386526813073202357f089e"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-18_macos-arm64"
      sha256 "691574dcf0f233462a10f69309184bead745a68e44d3d586d90122c125d756e3"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-18_macos-arm64"
      sha256 "a77dc49e90d74b0b652c00874d48bd0485fb80966fd4a40851e75d2b82267cf9"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-18_macos-arm64"
      sha256 "6bee18ab7992280b728410179da71a1bab79493707d21c0fdb420efe15ed8618"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-18_macos-amd64"
    sha256 "7ab1ac106c9a47464a9d26dec6d48142dcbdef61b6193a4785fa5f70cde62019"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-18_macos-amd64"
      sha256 "7ebd9e1efb35889b0b2756c6dbe3a9de7da3a625617f9cbf5180b38135086f44"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-18_macos-amd64"
      sha256 "1715f669c2e6bc1599b80f6253b1f0a356f212457d0eaeaf42433c480c875a4f"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-18_macos-amd64"
      sha256 "2b09869aebeec7910ec29550fdcb485f4e872743138517b9026247cda55ae294"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-18_macos-amd64"
      sha256 "18c4accf4c50c85ceecbe3c7fe2cddecf431ca65bcb646e5e4b05c75a2f443aa"
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

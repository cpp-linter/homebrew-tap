class ClangTools < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, and clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-22_macos-arm64"
    sha256 "eed04ce5a8994c5163d917ecccbb4fce2d5d73982b8d86df33ffe85f6108c548"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-22_macos-arm64"
      sha256 "f1a1074cb4800038d73e74dae421da0af0e166703e7666a6906135bdbfcf7e85"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-22_macos-arm64"
      sha256 "56b07cd7337f016fa8fb335a8ad10ee5d0071dafc25562ac4f90d3561dff6cb1"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-22_macos-arm64"
      sha256 "b1ceb939fcb4a6672cb1487353f877668e68b84c7785b6f703c61a55250af85d"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-22_macos-arm64"
      sha256 "4e3d855dfab7cc31f31c88fef3c34a7202e52cc29120ce2d343590bb4063162c"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-format-22_macos-amd64"
    sha256 "7efc86a20c578a5c771e534eb12f3cc0e1025b125aa467745f647b3d95b232ab"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-tidy-22_macos-amd64"
      sha256 "aaa72a4078b784dc9e3e3b866e2e367786d8bd3815f93a71aa0886d17cc56a07"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-query-22_macos-amd64"
      sha256 "7c34a3437c8c06f6592f8f33ed89d37e9427fd6fd6cef37f760ae57d4f46ff8e"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-22_macos-amd64"
      sha256 "bbcd16296cadf7374adf8415035a617994bdcd4e6cb4673e3fb2620eccf8bc89"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-include-cleaner-22_macos-amd64"
      sha256 "f0bd0c022f18f3b8dd72a8a5272509c66223d6632a11c2279dc459baf4faf554"
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

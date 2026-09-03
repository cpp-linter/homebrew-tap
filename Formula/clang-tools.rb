class ClangTools < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-23_macos-arm64"
    sha256 "d96a0b91b3e5b4cf838dab660dc9377a0083a5c04fb4ffb9ba75d09a727586c2"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-23_macos-arm64"
      sha256 "f5cd269482cd237c807c5b400fb0742e928d21c9d71748f90afe29701b66bc54"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-23_macos-arm64"
      sha256 "cb5a6d7f94621af8b52adca89b93b6a67543726df217338867a6648cfa79ea62"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-23_macos-arm64"
      sha256 "3db22cb9bbfd196a07248451c754b7cf94e496896ec4b88892282d81cd1dd0af"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-23_macos-arm64"
      sha256 "62e3d256df94a182ead29918c1c503b4a4a54e6b7e32e7a0ef2f317981676496"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-23_macos-arm64"
      sha256 "3fef3a84e4e91ede42fe2802d03580c484c449a6acadacb9a3cc819c43f2986c"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-23_macos-arm64"
      sha256 "9498deaadd1515da350e3f00e464d453d054c4f7cd7423806f7b14a905692057"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-23_macos-arm64"
      sha256 "70d14f0955e30d0a81416e4c2d5b8f80fbdc2dd11128abb5afba85fca5d6c9fb"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-23_macos-arm64"
      sha256 "e171e750018fe8957bec33f8bb02b572cd0e785ad182746cfb376cc8180c9887"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-format-23_macos-amd64"
    sha256 "bd0701417baa228078e19f4d84b3ef276bc18425154e0dc87b647946424b7862"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-tidy-23_macos-amd64"
      sha256 "b496437cd314ce142e3a3a46ab6487f2b2a28ecd56e4b66e736cdcac192860d1"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-query-23_macos-amd64"
      sha256 "31f26eed090ea9b23177cc183a820db60bf3d6c0968c6eb0a0613d4273e5c1fe"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-23_macos-amd64"
      sha256 "b263a6e0d2f6ec208e2615864d5165f22eeb4237e6e1a4eb1234e904bb8f6000"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-include-cleaner-23_macos-amd64"
      sha256 "92c316b64bd408bbc0e63f264ba4ef3d26bf2d03aa7200a00e9243d2cc0e7710"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-cov-23_macos-amd64"
      sha256 "80c34349c82476af4070da02b83b2afc751cf3b449e0143b58ac99ce5c1fbb93"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-profdata-23_macos-amd64"
      sha256 "bd68207b13f20ca2830d8c100ff0d80f0e48b3b96b4114d23719fb861d26487b"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/llvm-symbolizer-23_macos-amd64"
      sha256 "6114fd946b518e5b638d437eb74d237a9b8b6bb7e0aaee1bce9090114a4d9cd1"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-scan-deps-23_macos-amd64"
      sha256 "e7e26dfe978948aa6691904d88229f31ca299411d4e9640b2d13b937a056248d"
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

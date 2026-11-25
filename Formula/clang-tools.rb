class ClangTools < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.6"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-format-23_macos-arm64"
    sha256 "6cf74fa5a19e32ba595e0d457c94f4f1f7732838bb22d7fec478bea2b3869eda"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-tidy-23_macos-arm64"
      sha256 "5b63b16dbb891bc4c5983271e50352c0fdd0be93b55ada38cfb1c303e3fdbaf5"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-query-23_macos-arm64"
      sha256 "7b904d013ad8dee67491552514a536096b1c61358b3d51b5b98db19af58c9c84"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-apply-replacements-23_macos-arm64"
      sha256 "795aabada71440c174fe40eabdfe1e4fc0e351c27c292a77d600a6e4cc252983"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-include-cleaner-23_macos-arm64"
      sha256 "7e742582e1540056539e9bd4d298a1a5c55bcb99c69a1fddb4aeff30441b100a"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-cov-23_macos-arm64"
      sha256 "851d5763e2a431448b85a1d22ef1790dd6358ce9c274f92ada95443341a3e8af"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-profdata-23_macos-arm64"
      sha256 "f2c9ea42fcf98e5605c9f16ac09bd89279a84cb1d2544848627816bf73ac7601"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-symbolizer-23_macos-arm64"
      sha256 "6d309c7503c682a2a69110dda7f6183cfb38eba996ee289a6dccc8c15f08987b"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-scan-deps-23_macos-arm64"
      sha256 "cc90af53658dbe9152d2afc07665c4feb4c4824657530e76b70c04511dd4b4db"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-format-23_macos-amd64"
    sha256 "663c04bbeec7805a696853a731d4081a3080c2a53b2dd3343c42f718a4750c7b"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-tidy-23_macos-amd64"
      sha256 "2bc2bcf0d2b1e0ab47336a85b3e91abaf2621a38abfe468dd8be033417c568e3"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-query-23_macos-amd64"
      sha256 "5127604a1954a02d76fa048886a9b7653083b6470fb862b07dea14840bf3d8a3"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-apply-replacements-23_macos-amd64"
      sha256 "57b4aff1efbd98a45e29893517faeabccd4bb86993765a847cb93a365a0cfc10"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-include-cleaner-23_macos-amd64"
      sha256 "56aa7ff602686aae5b59d0d2fcaf2f2760a324baee36ade0e42d76da1123b8d8"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-cov-23_macos-amd64"
      sha256 "5faefee802c613f14492db8478ca097e236aa92bd2a2404dc163c240a7a20dfc"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-profdata-23_macos-amd64"
      sha256 "e7bb0cddb424a7f61804b12bfc2f12f7c6f6624c802d5437159f55a79755ea06"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/llvm-symbolizer-23_macos-amd64"
      sha256 "22558db5ef9b10ebe65bdc9aede9822631ed5240362b3e15d08421c599bb351c"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-scan-deps-23_macos-amd64"
      sha256 "93d37ee5c76b38052148166ea3477a01d8213a1c10377d53e48aee5fa4aea5a9"
    end

  end

  resource "clang-resource-headers" do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.6/clang-resource-headers-23.tar.gz"
    sha256 "24e42ca18012fcd9e714c6eb5310fed870138dc48578121dc1282e27b43015ac"
  end

  def install
    (libexec/"bin").install Dir["clang-format-*"].first => "clang-format"
    %w[clang-tidy clang-query clang-apply-replacements clang-include-cleaner llvm-cov llvm-profdata llvm-symbolizer clang-scan-deps].each do |tool|
      resource(tool).stage do
        (libexec/"bin").install Dir["*"].first => tool
      end
    end
    # Homebrew makes downloaded binaries executable in bin, but not here.
    chmod 0755, Dir["#{libexec}/bin/*"]
    # clang looks for its builtin headers in ../lib/clang/<version>/include,
    # relative to the executable in libexec/bin.
    resource("clang-resource-headers").stage do
      (libexec/"lib").install Dir["{lib/clang,clang}"].first
    end

    %w[clang-format clang-apply-replacements llvm-cov llvm-profdata llvm-symbolizer clang-scan-deps].each do |tool|
      bin.install_symlink libexec/"bin"/tool
    end
    %w[clang-tidy clang-query clang-include-cleaner].each do |tool|
      (bin/tool).write <<~SH
        #!/bin/bash
        # The C and C++ standard headers are in the macOS SDK. Upstream clang
        # needs SDKROOT to find it; an SDKROOT that is already set is kept.
        if [ -z "${SDKROOT:-}" ]; then
          sdk="$(/usr/bin/xcrun --show-sdk-path 2>/dev/null)"
          [ -n "$sdk" ] && export SDKROOT="$sdk"
        fi
        exec "#{libexec}/bin/#{tool}" "$@"
      SH
      chmod 0755, bin/tool
    end
  end

  test do
    system bin/"clang-format", "--version"
    system bin/"clang-apply-replacements", "--version"
    system bin/"llvm-cov", "--version"
    system bin/"llvm-profdata", "--version"
    system bin/"llvm-symbolizer", "--version"
    system bin/"clang-scan-deps", "--version"
    (testpath/"builtin.cpp").write <<~CPP
      #include <limits.h>
      #include <stdarg.h>
      #include <stddef.h>
      #include <stdint.h>

      const size_t int_size = sizeof(int32_t);
      const int positive = INT_MAX > 0;
    CPP
    (testpath/"sdk.c").write <<~C
      #include <stdio.h>
      #include <string.h>

      size_t length(const char *text) { return strlen(text); }
    C
    flags = "-std=c++11 -ffreestanding -nostdlibinc"
    refute_match "error:", shell_output("#{bin}/clang-tidy '--checks=-*,bugprone-*' builtin.cpp -- #{flags} 2>&1")
    refute_match "error:", shell_output("#{bin}/clang-tidy '--checks=-*,bugprone-*' sdk.c -- 2>&1")
    refute_match "error:", shell_output("#{bin}/clang-query -c 'match functionDecl()' builtin.cpp -- #{flags} 2>&1")
    refute_match "error:", shell_output("#{bin}/clang-query -c 'match functionDecl()' sdk.c -- 2>&1")
    refute_match "error:", shell_output("#{bin}/clang-include-cleaner --print=changes builtin.cpp -- #{flags} 2>&1")
  end
end

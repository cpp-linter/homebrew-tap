class ClangToolsAT19 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-format-19_macos-arm64"
    sha256 "96fd611fa68fbdcf134538ec7ff819f5131f214efed4873e1b0bb6ce96fd8e10"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-tidy-19_macos-arm64"
      sha256 "664e7ecaa0e65a56c322ec7b88fe5492dc1ea07df3b49db204d4a2dda4276acf"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-query-19_macos-arm64"
      sha256 "c0f52291c11559dd0b48cd54a06b825b9ed24e6e413054552372e7b8f6b405fe"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-apply-replacements-19_macos-arm64"
      sha256 "046a75e773abfa873e5cb81ec7caa8c015e490afc885b5448d59f96389cd3751"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-include-cleaner-19_macos-arm64"
      sha256 "6716376325d1feeac430c87b85640964196de36a11a1fccceb75a5f9f8a467e5"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-cov-19_macos-arm64"
      sha256 "be168327bd9822cda968e737c5781aba63bad9dce5fa5ddeac56668f4389b977"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-profdata-19_macos-arm64"
      sha256 "6dc31d84a41160cb216219a5c2ff4100bfc5d2d868740fb0dfdcf2d68bdb4f65"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-symbolizer-19_macos-arm64"
      sha256 "3c52856993e8b9b6ba5ac97dbad8bed16ec9e0c21f498cc9bfd5d26aff54a745"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-scan-deps-19_macos-arm64"
      sha256 "055beadddf88532a71c5f7630c66e9277f538442f21c66b8a5d8e934a4d48385"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-format-19_macos-amd64"
    sha256 "5113906452255930b0341c3ebc0be2f70159676219c3ab152ee68581cc6b8a41"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-tidy-19_macos-amd64"
      sha256 "196f0cf12e045c4b394b86a5975276453d81f8998a7d6aeee6f99754b0e356f3"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-query-19_macos-amd64"
      sha256 "ea7f50f7f10df27a6e6571dd2ba0e262bc1d2176ed3529c563d4017ddb6c7a0e"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-apply-replacements-19_macos-amd64"
      sha256 "a46e4bbbb7dc0b8cc8b4f41a5164137581a7bf15164baf5fb8d928971b85db00"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-include-cleaner-19_macos-amd64"
      sha256 "795815fe9e4a21905f8d3a6632de7e90aceeac32cd11efad364025a035a627b5"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-cov-19_macos-amd64"
      sha256 "2f80f1d35d6624de876956aa2d19ef40661f5b922565fbce5d50d177328a4f61"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-profdata-19_macos-amd64"
      sha256 "b8929ec931e19863970c247513ba64c62bde2bf5eae9b0852c5e0dc44f2cc8ee"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/llvm-symbolizer-19_macos-amd64"
      sha256 "cc6ed0b8cf2402934b3083a36e72a2962d01d61243511bb1c2332617b442ad0c"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-scan-deps-19_macos-amd64"
      sha256 "34040c5de87cab745942ce9679ecd0ff890b925b88a767b8ff0ac1f10a383d15"
    end

  end

  resource "clang-resource-headers" do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-resource-headers-19.tar.gz"
    sha256 "e87901f90bd807d71a9a957f7b1dcd8822ea7d496ab8710e28d16c4e287dbf11"
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
    flags = "-std=c++11 -ffreestanding -nostdlibinc"
    refute_match "error:", shell_output("#{bin}/clang-tidy '--checks=-*,bugprone-*' builtin.cpp -- #{flags} 2>&1")
    refute_match "error:", shell_output("#{bin}/clang-query -c 'match functionDecl()' builtin.cpp -- #{flags} 2>&1")
    refute_match "error:", shell_output("#{bin}/clang-include-cleaner --print=changes builtin.cpp -- #{flags} 2>&1")
  end
end

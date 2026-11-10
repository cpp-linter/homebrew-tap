class ClangToolsAT21 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-format-21_macos-arm64"
    sha256 "b09a880d055b3dc25969248b2ae0cce45ae0d9551859a5ccb3b1d0fceb6f0fb4"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-tidy-21_macos-arm64"
      sha256 "d94dbf5f3d8735d41518f2ac70798f8266dc358a0a91835e08c96dc84815a198"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-query-21_macos-arm64"
      sha256 "dc2dc8e9d04ef1419a3386ef1d5a1c558e0c127d827b2972471f609defe63eda"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-apply-replacements-21_macos-arm64"
      sha256 "ebe7d3e102146cd860ecd2a255bff33584cc06c1c61375faf4efc3e6960f2c03"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-include-cleaner-21_macos-arm64"
      sha256 "ba64116a588a81ffcbcd0f8a1f7ce6f901c20424f9e232cf5553a72e0e25c78c"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/llvm-cov-21_macos-arm64"
      sha256 "d57cf9740871b978a466a4cade3525345ed6f168bf540e64ab6b3bfad06efaf9"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/llvm-profdata-21_macos-arm64"
      sha256 "d0edcec8a78dcf649dd7d557f8b8468ae7344e0556e2f934ead5d57dada81cde"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/llvm-symbolizer-21_macos-arm64"
      sha256 "3e61cf7b7e5258d9d27685c8e6a3ff7e130198afd3b883abee492dff4432d4c3"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-scan-deps-21_macos-arm64"
      sha256 "eab6835d335f38d4d7aab5cb1848e58162889902e765ae1d099ee733ba0adeb6"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-format-21_macos-amd64"
    sha256 "bd3af2c8319dfed7745e0cff4712dbe2c27bfdf6928bd979468177aba28aff37"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-tidy-21_macos-amd64"
      sha256 "3424b4db0921471cbd5f56c834f9ea0bb9a6f6a946ecfa96c9147bba8ead935a"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-query-21_macos-amd64"
      sha256 "7b75eacc5b934fa15c9b97194c8ed53181e5173db0790a279f12cf45c4a105e5"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-apply-replacements-21_macos-amd64"
      sha256 "250f949b940defdcef51b43f24eef99026697aa207f6f67651a7a6201f1a867f"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-include-cleaner-21_macos-amd64"
      sha256 "b645d352a73479130d302d760906d67f27ffb2c3bbcec43746d665d8b1052cbd"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/llvm-cov-21_macos-amd64"
      sha256 "f0fb7fe714579d75decc4ec297a7b077c13ec52836cd814e0c03d42b100646cd"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/llvm-profdata-21_macos-amd64"
      sha256 "1414c83e5172e0eb82051b53b178bebee909253f974f1c4b3c73a7b4db8edc2b"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/llvm-symbolizer-21_macos-amd64"
      sha256 "2d2546a83ae850d81e39764da842dfe4028eb0323cad78b3ff9bee2490de709c"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-scan-deps-21_macos-amd64"
      sha256 "0e5ccd9ab044579ffee8e93c045fd42136a9180544fd5c17dff458aba9f471b7"
    end

  end

  resource "clang-resource-headers" do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8/clang-resource-headers-21.tar.gz"
    sha256 "756c8264072f48f07c31d99ae8450faa76ee5e620e023856e158bffe2d2a8014"
  end

  def install
    (libexec/"bin").install Dir["clang-format-*"].first => "clang-format"
    %w[clang-tidy clang-query clang-apply-replacements clang-include-cleaner llvm-cov llvm-profdata llvm-symbolizer clang-scan-deps].each do |tool|
      resource(tool).stage do
        (libexec/"bin").install Dir["*"].first => tool
      end
    end
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

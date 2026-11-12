class ClangToolsAT21 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "21.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-format-21_macos-arm64"
    sha256 "903deee4f7aa06d40aee095467d98f03d55957dac2ad37003f28f5417446ed51"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-tidy-21_macos-arm64"
      sha256 "ad02550e615d4690ce80facff6a7d10be072208a8177de220abbc6f484e7088c"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-query-21_macos-arm64"
      sha256 "4fa251b3b389179c115ae56782aae73fe4e37ba00dbf698d5ece29f9218f617b"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-apply-replacements-21_macos-arm64"
      sha256 "a61dea289953557ca3bdc33ecdfef1dd032aeb851d57a1ada34a22c6d798f173"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-include-cleaner-21_macos-arm64"
      sha256 "ee60f946a51b89195a7b1b377594dfe206cf934d08b6d6ebf20ac309a41879e8"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/llvm-cov-21_macos-arm64"
      sha256 "6bc6ec29733a80c767dbca2c54ac5731685554a39774020ba7f470a34add5168"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/llvm-profdata-21_macos-arm64"
      sha256 "7bafc64b1ab82279c838a642236435d9054d174cb41b48636a98ce9ad67f5e97"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/llvm-symbolizer-21_macos-arm64"
      sha256 "3be0bd279b69d553c0194239e9b9a223cc700e1c5e66255b86e2edc84e290bf1"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-scan-deps-21_macos-arm64"
      sha256 "7ead94bea7699a086b852efb36699a10319b7a52926fbba926e063dab73c2da6"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-format-21_macos-amd64"
    sha256 "bd3af2c8319dfed7745e0cff4712dbe2c27bfdf6928bd979468177aba28aff37"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-tidy-21_macos-amd64"
      sha256 "3424b4db0921471cbd5f56c834f9ea0bb9a6f6a946ecfa96c9147bba8ead935a"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-query-21_macos-amd64"
      sha256 "7b75eacc5b934fa15c9b97194c8ed53181e5173db0790a279f12cf45c4a105e5"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-apply-replacements-21_macos-amd64"
      sha256 "250f949b940defdcef51b43f24eef99026697aa207f6f67651a7a6201f1a867f"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-include-cleaner-21_macos-amd64"
      sha256 "b645d352a73479130d302d760906d67f27ffb2c3bbcec43746d665d8b1052cbd"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/llvm-cov-21_macos-amd64"
      sha256 "f0fb7fe714579d75decc4ec297a7b077c13ec52836cd814e0c03d42b100646cd"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/llvm-profdata-21_macos-amd64"
      sha256 "1414c83e5172e0eb82051b53b178bebee909253f974f1c4b3c73a7b4db8edc2b"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/llvm-symbolizer-21_macos-amd64"
      sha256 "2d2546a83ae850d81e39764da842dfe4028eb0323cad78b3ff9bee2490de709c"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-scan-deps-21_macos-amd64"
      sha256 "0e5ccd9ab044579ffee8e93c045fd42136a9180544fd5c17dff458aba9f471b7"
    end

  end

  resource "clang-resource-headers" do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-21.1.8-2/clang-resource-headers-21.tar.gz"
    sha256 "756c8264072f48f07c31d99ae8450faa76ee5e620e023856e158bffe2d2a8014"
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

class ClangTools < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.5"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-format-23_macos-arm64"
    sha256 "d813d20b122172ae05e19b4748fbd945ba1cbbc71a25d4e59f1de9d592cf4a6c"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-tidy-23_macos-arm64"
      sha256 "f5c932df081106334aefcd673a2bee468e9db55859cf3a2de248d2ca9357d0c5"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-query-23_macos-arm64"
      sha256 "686932225106e089210e072a0422ea99b9b8b876914092c7acd59dfd186c6a69"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-apply-replacements-23_macos-arm64"
      sha256 "b1aadab598975fe5dff73021af15819d52a5ae6ee3facb057f1936cbcd3416ee"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-include-cleaner-23_macos-arm64"
      sha256 "ccbe31589a50b188c65c09f4196e76b0042b6a4da16b4f0eaf7893cd20417b2a"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/llvm-cov-23_macos-arm64"
      sha256 "ddf0db4d72728a141213336309bfb17725777b3612ec552e33911c3ecb29930e"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/llvm-profdata-23_macos-arm64"
      sha256 "e230f4620db5ec9bf8b81139599540338ec25d3bb43aeda68c4369e346fa9205"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/llvm-symbolizer-23_macos-arm64"
      sha256 "276859345c07418b1d2a360ca1c102cbf89736c39c9aa85c284067ed66673083"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-scan-deps-23_macos-arm64"
      sha256 "26b30a40f9780e02da75c93a3b44560403019395ddb3ca12777f1818d822ebb4"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-format-23_macos-amd64"
    sha256 "ee5974d5f2f0afb54319eff6b304547e8566613418c41362c8b48fc9207a81f8"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-tidy-23_macos-amd64"
      sha256 "3d05d1a2e89a22e897d00cfc38af2b26e2903f2b769fe5da0c1eaafbae816285"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-query-23_macos-amd64"
      sha256 "c6bf94de9be769874120fbf3e52efcfda001eb3ba07dba5431d9aa578f588b86"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-apply-replacements-23_macos-amd64"
      sha256 "d9831645fc27f0ff33f451517f17655fdced9ff410bf3843c390cb71b3d11e1b"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-include-cleaner-23_macos-amd64"
      sha256 "67de85c2ffd77bc9eea93ee94f767e421bbddbee0fdb0b5202494c0bc4e483ed"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/llvm-cov-23_macos-amd64"
      sha256 "4dfdfce39510f2b6af5afd3e00c61aa9b2013c72a9bb4149e194dba0fc75eb17"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/llvm-profdata-23_macos-amd64"
      sha256 "88baa44c240f26ce94a95549097f0b8ec263637d44760741bf0403af372b28dd"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/llvm-symbolizer-23_macos-amd64"
      sha256 "d334f32b5e611888805accefebb273b4a4ce8fff353581c4117196d72488605b"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-scan-deps-23_macos-amd64"
      sha256 "da9e95a9c9cf59101340c75657e8106dfb39b85c302fa708e9a7d14e9a52a2f5"
    end

  end

  resource "clang-resource-headers" do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5/clang-resource-headers-23.tar.gz"
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

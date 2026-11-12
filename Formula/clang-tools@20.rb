class ClangToolsAT20 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20.1.8-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-format-20_macos-arm64"
    sha256 "00c284a351c048155ef748ab08c59e69ea12a45910d475e9a555e844c8a660b5"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-tidy-20_macos-arm64"
      sha256 "72ff88b8dcf83aaf468d80e80c7177ed48c8f2f30876832f84ed1dcc5262f7a1"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-query-20_macos-arm64"
      sha256 "4ab9e9b58cd11ff4b2a1405b4a046f9c90fe9aa14b461cbdbefc165e6533edf7"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-apply-replacements-20_macos-arm64"
      sha256 "49dad63a5204bcfb4def27677709700df2754bdc8c4abde324a51ce5f55b9e15"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-include-cleaner-20_macos-arm64"
      sha256 "78a1936fa606f607b8b9c5d4c37952798b5e7f627f2659c0ef3dede43d0c89ca"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/llvm-cov-20_macos-arm64"
      sha256 "2be568cefbe338d2225ce18527172eb8e3a4b316f9c1f4d7e96b6de1360da2c9"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/llvm-profdata-20_macos-arm64"
      sha256 "b91047664456c265aa718c8d04963e493e537d38b3f28e2a72d05c316df5784b"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/llvm-symbolizer-20_macos-arm64"
      sha256 "287635bad4c86ce29215aa5441501718930e83dc5ddceea4ede8fa658824beca"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-scan-deps-20_macos-arm64"
      sha256 "dc192a1156b1eaf571c0917b8a81ed11229e37c96dc69e83a17e97c2ecf3e41d"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-format-20_macos-amd64"
    sha256 "686f002efc41fc496b41e1eff7056d969e6eafbaac3f69a341c833ea1d1a3fc7"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-tidy-20_macos-amd64"
      sha256 "617e08b7744604ecd0fb28c8ee5670eda1c0a5fd9a8dfefc953247685f40a476"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-query-20_macos-amd64"
      sha256 "bb71c3b714fc10003bdf275842a34a6469299e90247e158ed5d28c40de5a6953"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-apply-replacements-20_macos-amd64"
      sha256 "ab39d045ee64a4dff72a63ec5c91dcd975e3b653d46d2b2f7845a46f034b05f6"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-include-cleaner-20_macos-amd64"
      sha256 "d060e415b6ae661f3b9a26fdc14263ffe344100283f4da50ba3f00a64c224cd3"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/llvm-cov-20_macos-amd64"
      sha256 "9da50e15053a6b618a5cf09ea6e8c197f7b2a500542e1be618c8fb4dabfccb8e"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/llvm-profdata-20_macos-amd64"
      sha256 "68e95fa75477e252fe99ff8d2cbab3ddf7a980a193aafa2dc3a6429f2ba32061"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/llvm-symbolizer-20_macos-amd64"
      sha256 "55366c0093442d67606fdef7ab9f9636c8c32dcb2da81fc656a65af759e0d0a9"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-scan-deps-20_macos-amd64"
      sha256 "5cb99bc62d51348176e8985bd1a0b0f7a8746816ba9e0a3dbdaced520bc61d82"
    end

  end

  resource "clang-resource-headers" do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-20.1.8-2/clang-resource-headers-20.tar.gz"
    sha256 "e65fc66e4c1e2a3e283c4a51e7158f866c368c5bb80688b077d259dc41af22be"
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

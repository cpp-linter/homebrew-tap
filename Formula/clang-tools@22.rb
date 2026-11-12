class ClangToolsAT22 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "22.1.8-4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-format-22_macos-arm64"
    sha256 "1b4e23f92dac24af9cfbeb01dbe948585bce861b2b8e3968e8249f26af867c5e"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-tidy-22_macos-arm64"
      sha256 "680db325b880c753c3c64e46f3c7d7b4c7f72d61de3093f2bef7f9024ae0c719"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-query-22_macos-arm64"
      sha256 "54e865ea83387b139eb2a79201c79ec7816014185ae61cffa6c4fc3097010e96"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-apply-replacements-22_macos-arm64"
      sha256 "50d695f5c6db754c50514a14e9f18f522c7ca1f72bb20dacd69e23d564cec5e6"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-include-cleaner-22_macos-arm64"
      sha256 "cf580076c61ba51dcdb11663d4ff6b5158e05e4b1910027e4dca806c94fb5bc6"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-cov-22_macos-arm64"
      sha256 "e789474fc2ab1ef8beecb8fcc5330076b699c179ce7f9bd74fb1c911c25b96e8"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-profdata-22_macos-arm64"
      sha256 "9e433136e00eb3a946dd5515aee0885515cf938e001af65f7b98c4836e359bba"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-symbolizer-22_macos-arm64"
      sha256 "89d961979c4eed8228c51fbfb77bdaeb467958f738ff000c688a3b96dfe5662e"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-scan-deps-22_macos-arm64"
      sha256 "fe22eb398ab79770c375ccd9ca770c7b7bff4dbd023dbf2ff4560ed613d0c872"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-format-22_macos-amd64"
    sha256 "b9d3106e7d0f06550a1014adc4634cda6a94f1f6b761c50b01a7d73a55c8ec3a"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-tidy-22_macos-amd64"
      sha256 "499731580ef04ca250a2e218c23ab94d94e241d479b7106266eea1af56771cfe"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-query-22_macos-amd64"
      sha256 "2ef2587ba60262835454f3d5c53d8b9db51b57209f4331df2bf7ff0a38fe9fb3"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-apply-replacements-22_macos-amd64"
      sha256 "431ef5163d69c54aeba3fa28679382efec8350dbc248e3e0cbbce2df9a8594d1"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-include-cleaner-22_macos-amd64"
      sha256 "595b49dc7e899ef17e552c28d03e1851a82cc39d757c70e91539f21c42c2af31"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-cov-22_macos-amd64"
      sha256 "45ffc02717627a416c230093a1a31f71dbc5994c4ed2f93a0dff52ff9e09b173"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-profdata-22_macos-amd64"
      sha256 "b5acc4f103418298f9ba656c9b1283bba4c7bfd4825e2b09fd07b96344bae50b"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/llvm-symbolizer-22_macos-amd64"
      sha256 "0ce054ccfc5c29ff79786dbfe5dab4c755cedebe5c85ed2a930e98a44e3394d7"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-scan-deps-22_macos-amd64"
      sha256 "d74de32f7ed031d47eeb8a3ca8f62f1257e40942992882713ee4b42889ec6a9c"
    end

  end

  resource "clang-resource-headers" do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-22.1.8-4/clang-resource-headers-22.tar.gz"
    sha256 "ee15874cdbfd2bf4702e3f9ee9c588f20a75e3791b0f084e04ac2bf421b2e94d"
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

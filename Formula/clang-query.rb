class ClangQuery < Formula
  desc "Static binary for clang-query"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.5-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5-2/clang-query-23_macos-arm64"
    sha256 "686932225106e089210e072a0422ea99b9b8b876914092c7acd59dfd186c6a69"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5-2/clang-query-23_macos-amd64"
    sha256 "c6bf94de9be769874120fbf3e52efcfda001eb3ba07dba5431d9aa578f588b86"
  end

  resource "clang-resource-headers" do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.5-2/clang-resource-headers-23.tar.gz"
    sha256 "24e42ca18012fcd9e714c6eb5310fed870138dc48578121dc1282e27b43015ac"
  end

  def install
    (libexec/"bin").install Dir["clang-query-*"].first => "clang-query"
    # Homebrew makes downloaded binaries executable in bin, but not here.
    chmod 0755, Dir["#{libexec}/bin/*"]
    # clang looks for its builtin headers in ../lib/clang/<version>/include,
    # relative to the executable in libexec/bin.
    resource("clang-resource-headers").stage do
      (libexec/"lib").install Dir["{lib/clang,clang}"].first
    end
    %w[clang-query].each do |tool|
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
    refute_match "error:", shell_output("#{bin}/clang-query -c 'match functionDecl()' builtin.cpp -- #{flags} 2>&1")
    refute_match "error:", shell_output("#{bin}/clang-query -c 'match functionDecl()' sdk.c -- 2>&1")
  end
end

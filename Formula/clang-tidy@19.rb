class ClangTidyAT19 < Formula
  desc "Static binary for clang-tidy"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "19.1.7-2"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-tidy-19_macos-arm64"
    sha256 "664e7ecaa0e65a56c322ec7b88fe5492dc1ea07df3b49db204d4a2dda4276acf"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-tidy-19_macos-amd64"
    sha256 "196f0cf12e045c4b394b86a5975276453d81f8998a7d6aeee6f99754b0e356f3"
  end

  resource "clang-resource-headers" do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-19.1.7-2/clang-resource-headers-19.tar.gz"
    sha256 "e87901f90bd807d71a9a957f7b1dcd8822ea7d496ab8710e28d16c4e287dbf11"
  end

  def install
    (libexec/"bin").install Dir["clang-tidy-*"].first => "clang-tidy"
    # Homebrew makes downloaded binaries executable in bin, but not here.
    chmod 0755, Dir["#{libexec}/bin/*"]
    # clang looks for its builtin headers in ../lib/clang/<version>/include,
    # relative to the executable in libexec/bin.
    resource("clang-resource-headers").stage do
      (libexec/"lib").install Dir["{lib/clang,clang}"].first
    end
    %w[clang-tidy].each do |tool|
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
    flags = "-std=c++11 -ffreestanding -nostdlibinc"
    refute_match "error:", shell_output("#{bin}/clang-tidy '--checks=-*,bugprone-*' builtin.cpp -- #{flags} 2>&1")
  end
end

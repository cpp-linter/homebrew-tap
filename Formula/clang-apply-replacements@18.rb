class ClangApplyReplacementsAT18 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-18_macos-arm64"
    sha256 "71d258e6a406e14d114298079b2b324413a353c00b1d989b88f664bdf5533b22"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.09.01-5fb8802d/clang-apply-replacements-18_macos-amd64"
    sha256 "8116d2830c413d68c4431d038c5a5f33efaf0d0c61a59e93c1b3ea7852d2cef5"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

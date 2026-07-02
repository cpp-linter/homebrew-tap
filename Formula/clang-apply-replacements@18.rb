class ClangApplyReplacementsAT18 < Formula
  desc "Static binary for clang-apply-replacements"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "18"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-18_macos-arm64"
    sha256 "71d258e6a406e14d114298079b2b324413a353c00b1d989b88f664bdf5533b22"
  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.07.02-e6fa8f6a/clang-apply-replacements-18_macos-amd64"
    sha256 "2b09869aebeec7910ec29550fdcb485f4e872743138517b9026247cda55ae294"
  end

  def install
    bin.install Dir["clang-apply-replacements-*"].first => "clang-apply-replacements"
  end

  test do
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

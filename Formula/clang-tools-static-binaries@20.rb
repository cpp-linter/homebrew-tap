class ClangToolsStaticBinariesAT20 < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, and clang-include-cleaner"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "20"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-20_macos-arm64"
    sha256 "169f5e43623202f3969c8ab659fce9e201c21dda83d018dcf3fb756b2d3bb37d"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-20_macos-arm64"
      sha256 "b8cf2b28ab71363d3f2b5de2888f31fd8cb84777be79b3ff9139e5f26e4310af"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-20_macos-arm64"
      sha256 "36e6caf33b1fc2e266471d3fb11556e1a585579d8ae016d00b74ca97c96e988f"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-20_macos-arm64"
      sha256 "955d8ec2be6bc784a9586eb07850c756d28fab131571ca75d4996d330c77b176"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-20_macos-arm64"
      sha256 "d3043c2377ed12e99afc6598464dfd4105e24a672c1e8e7500e16c04e8056baf"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-format-20_macos-amd64"
    sha256 "07e6049c6cee253e683b5534ead02a75eb48c354a470c8a480ed3e42d5508fba"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-tidy-20_macos-amd64"
      sha256 "a76b057c7112908d553a551849b897165662356c75100f0532f688b8020a72a0"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-query-20_macos-amd64"
      sha256 "b24f850991848329196ccdcadbaf4f69e6eabf2ff214aacbede1f0b3548976fd"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-apply-replacements-20_macos-amd64"
      sha256 "b13269c14f6993aa896041dc1742478396ecbd041be811e98cb277d015d2c4ce"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/2026.06.15-a56c0263/clang-include-cleaner-20_macos-amd64"
      sha256 "4489dd9beaf155bd0043e168e46004ee6c500c43a62986e67b9f49d283938926"
    end

  end

  def install
    # Install the main binary (clang-format)
    bin.install Dir["clang-format-*"].first => "clang-format"

    # Install tool resources
    %w[clang-tidy clang-query clang-apply-replacements clang-include-cleaner].each do |tool|
      next unless resource(tool)
      resource(tool).stage do
        bin.install Dir["*"].first => tool
      end
    rescue
      # Skip if resource not defined (e.g., clang-include-cleaner < v18)
    end
  end

  test do
    system "#{bin}/clang-format", "--version"
    system "#{bin}/clang-tidy", "--version"
    system "#{bin}/clang-query", "--version"
    system "#{bin}/clang-apply-replacements", "--version"
  end
end

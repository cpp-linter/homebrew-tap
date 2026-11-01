class ClangTools < Formula
  desc "Static binaries for clang-format, clang-tidy, clang-query, clang-apply-replacements, clang-include-cleaner, llvm-cov, llvm-profdata, llvm-symbolizer, and clang-scan-deps"
  homepage "https://github.com/cpp-linter/clang-tools-static-binaries"
  version "23.1.4"

  on_arm do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-format-23_macos-arm64"
    sha256 "9d8668dce13e818e7a9b35633a58585644e75acade660fb9c1ad2e9db773df0f"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-tidy-23_macos-arm64"
      sha256 "0cb59ace4a07b8c9151cca5f048ddf3ade06e986e68c23d0eda48299365bf7e0"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-query-23_macos-arm64"
      sha256 "a9cc62332b6865b3d022f8a7610acff8db9956fccb59d847b482c1cccec7e90f"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-apply-replacements-23_macos-arm64"
      sha256 "91fc46a2834641ab00ed2694d408088de163077ca7feea9061f55d5fe013b49b"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-include-cleaner-23_macos-arm64"
      sha256 "56105456ab2f529ea7a99c942d8a4cb8dc31e073176aa6db232dae71c4de1af2"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-cov-23_macos-arm64"
      sha256 "2d241af32a6620c65b993d02c54a02fb2edc39c830a88147f82389d51eb606f2"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-profdata-23_macos-arm64"
      sha256 "b60220e1873ee76144678894eeb280f4046f78cb72a437bdb2b8b37c8c5b0657"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-symbolizer-23_macos-arm64"
      sha256 "7e2bcc0800665716cf082b3a88ceed8112bcdd0519d24ada09a7e3b3e9ad1530"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-scan-deps-23_macos-arm64"
      sha256 "cf36145f51a751f8a6f5dff6dee53069a13eaa18f32318f81be1ad231f56357c"
    end

  end

  on_intel do
    url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-format-23_macos-amd64"
    sha256 "61a213a2e2976323112b4973fa47799586b05f513b28bc8a3c93eae73b6731c1"

    resource "clang-tidy" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-tidy-23_macos-amd64"
      sha256 "7d326248dc099c99475b59925556dd029f1ede1c753d7f53ec2478fedfb26dec"
    end

    resource "clang-query" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-query-23_macos-amd64"
      sha256 "9559f339e880232a2646cacd42d6076afa524a1d470fe8bca75ebc9cdf399042"
    end

    resource "clang-apply-replacements" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-apply-replacements-23_macos-amd64"
      sha256 "5f5f3ec7f78c0d36ab1872027c3f8d2958f694e39c9a74aacbbe6fb5793d7d2a"
    end

    resource "clang-include-cleaner" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-include-cleaner-23_macos-amd64"
      sha256 "9f4a0579da2d80bde7a99b21f0ea1ca83ae14265c6551090edc2fcc32f643127"
    end

    resource "llvm-cov" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-cov-23_macos-amd64"
      sha256 "9adea9391a6260846344a6980eb1942b3f9f7c0ad8042bc0cd9e626ff5fd00ed"
    end

    resource "llvm-profdata" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-profdata-23_macos-amd64"
      sha256 "d794db733b5103c7b966a39f57b77e20f4d2960636465560092cf185855a76ce"
    end

    resource "llvm-symbolizer" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/llvm-symbolizer-23_macos-amd64"
      sha256 "1939cf404a863b77789b474089f995b264c2360edf1f7aaeb26da36af277e8cc"
    end

    resource "clang-scan-deps" do
      url "https://github.com/cpp-linter/clang-tools-static-binaries/releases/download/llvm-23.1.4/clang-scan-deps-23_macos-amd64"
      sha256 "25d144e0c4a8d866cbaa364a96cb0e94bfaf783aa92f93274e1250c515962932"
    end

  end

  def install
    # Install the main binary (clang-format)
    bin.install Dir["clang-format-*"].first => "clang-format"

    # Install tool resources
    %w[clang-tidy clang-query clang-apply-replacements clang-include-cleaner llvm-cov llvm-profdata llvm-symbolizer clang-scan-deps].each do |tool|
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
    system "#{bin}/llvm-cov", "--version"
    system "#{bin}/llvm-profdata", "--version"
    system "#{bin}/llvm-symbolizer", "--version"
    system "#{bin}/clang-scan-deps", "--version"
  end
end

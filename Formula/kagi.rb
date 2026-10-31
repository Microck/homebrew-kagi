class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.24.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.24.1/kagi-v0.24.1-aarch64-apple-darwin.tar.gz"
      sha256 "37a14fa27ec9f1edaa722721d40c4abd3fbe4d18b717a024fb6b877630fd8c4a"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.24.1/kagi-v0.24.1-x86_64-apple-darwin.tar.gz"
      sha256 "ab16413b2d3f3216a424ecd0e716050f55cffa446805a18998d53fade9db3fd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.24.1/kagi-v0.24.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ce224ac2396dafb152bd48a7bac05b2bdfd97646a692e65dd87129317324ce9"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.24.1/kagi-v0.24.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc2dc7e45d965ee14bc8f38672c2e095084443264ef2e5682de47d68fa001886"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

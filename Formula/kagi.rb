class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.0/kagi-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "e80f95ac2862f962b1b69c556f1c57ef9dd741b9b6ab519f43d231558fce137c"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.0/kagi-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "67be3bf312f4b6a40d4c8aa14246dfb1263c0000b88b7d380b632c0fd47576ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.0/kagi-v0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ffdb4dbd8f4f255dd5ee6358dd511e9ae366fc313cca7c85c11e9d8e708fd206"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.0/kagi-v0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6fe09168b5879ae1e8facc8682dac17a104a7bb268cdf39bbc9a531d40849605"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

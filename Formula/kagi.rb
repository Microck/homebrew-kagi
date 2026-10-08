class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.21.0/kagi-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "1d743b7b60413fe92e46a08e12b6904aea5f17b59b0645fff9919d0cd723d31f"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.21.0/kagi-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "82b797247ca98808321bbe91b5258bc4065e123ffe915a70a02c8de56dfee709"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.21.0/kagi-v0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "26379f65b22ad53f24473749dacd804b0754762ed9646e01e3050f78c4232d88"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.21.0/kagi-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7080069a916adf8630f636c408270c4f11ebc253e29e45b65a51b4daeed8e2bf"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.0/kagi-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "cf5ffd2948825b876e90ce3171e9f5a705be9d3b22a40473ed44d7d4bff4cc8e"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.0/kagi-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "d234191cd8dcbc03395bee80b946c5b663c91c9989116e750339877c0df98326"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.0/kagi-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9919aef9c0497a1632d77d566cd38e093e2ec4b0c6364811e964ead4a8b3dd37"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.0/kagi-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59186e04520a556d0f6d1d00ae858ad39768f49b46d727c7f7231eda242aad8a"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

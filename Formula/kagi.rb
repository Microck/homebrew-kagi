class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.17.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.1/kagi-v0.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "1bb5af6e76de1cf5524efe98e72078381414936aa51506bcd6062ecbb2388022"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.1/kagi-v0.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "75af1f4c6ab9b0087274349ffccfb8e0772db27872e3de639ee203fbb6d883a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.1/kagi-v0.17.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "759c4d4c357933bb287222ee4566d21e4f8ecbe130952c515a17ed5bb2cb6477"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.1/kagi-v0.17.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5da2fc64fa18e98a263ee40def3eac0ceae506680a313d3481b1688d7b9f44e9"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

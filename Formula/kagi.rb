class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.11.0/kagi-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "54b1e234078cdbef3d282b777eb3c08e27cb2cadea5784dc0c19cb694355c52e"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.11.0/kagi-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "12d149e20c845095c1d3b51bddb293fa4a52322914a0046663874eff28e8dfcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.11.0/kagi-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42450ed7fd5085843aecac8744ff7370b7cf4c5a2196edf21f740c10253652be"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.11.0/kagi-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "263da27fef839b38f7491eff1f5c2cd2fc87b88233d3e78b2de6b11dc8836f17"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

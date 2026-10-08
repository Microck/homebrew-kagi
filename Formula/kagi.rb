class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.21.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.21.1/kagi-v0.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "1ac498d9e6fcca6baa0cf7070e087597581318c95e7fa84fd0ede4002adc4203"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.21.1/kagi-v0.21.1-x86_64-apple-darwin.tar.gz"
      sha256 "fd9a45b226bbc7d6942737ac8a0fa0481368d935db0d3581491d09e1a0f59d4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.21.1/kagi-v0.21.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "775b4a331badcb85e9c42ffd76554ff6c07c00582885560fbc61ad89dc454294"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.21.1/kagi-v0.21.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16a1556078bfc78adfd5aabaa377bc13b5826f804f1fb37093e906bc08fd263a"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

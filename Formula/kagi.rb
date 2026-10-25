class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.23.0/kagi-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "b44ab5fd9f3623c398d8d243e4ba1c581ba26f33d79f19c377b61b7c91c247da"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.23.0/kagi-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "85cc06c73e4b57d52e4ce5a358c0ecda21e8b121efe9868e9833370ad0ecf313"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.23.0/kagi-v0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "906f073126688c6b48e53e617a5ec331e2c08a15eb75f37f8a627029c194f303"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.23.0/kagi-v0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7d07f0f6289919444d15eaeaefdab3ad46e52d3213b63ea9a82b7603e95f013"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

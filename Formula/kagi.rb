class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.1.7/kagi-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "bb61fad7b0eab897867c88a283c3b0b32017068f4f15b5dcee93547a2bfa5f9a"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.1.7/kagi-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "650d3b0b70803892d6e32e95f427c73fbf279353c6e6445417890e594a47ef79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.1.7/kagi-v0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc23ece826231ec84dad9a3388e896e347471d8c6b97e52c258f9eed8e2bc232"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.1.7/kagi-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4f1ccd865749aef9bc5181947d2e3f9cd3b96402ccaf40b1742747413078c69"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.8.1/kagi-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "28327a374712fc62e3399f38a61916a45684291f496e77f6c7d18eaa3208ef0d"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.8.1/kagi-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "dbc79e47d151b82879a84a43d6c6cd918b83e83a0ccfaa2309fa72d19df2246d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.8.1/kagi-v0.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca49baa3a844d34b169cc2beb450845423473efe1b1ef58966e3d39ec9301567"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.8.1/kagi-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4e41b7ef581908a4a637cd63744e5404aea233afbf0b7028e8a2e318d2be37a"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

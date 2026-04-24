class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.6/kagi-v0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "5ed28028299cce1a65a0da0f8229227674c1bb859222a8da7174daa294034b8e"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.6/kagi-v0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "85cd98d6f2681675165fb675e96e60db6fa391105a6723d3206d0ff3fc0bbcde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.6/kagi-v0.4.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c08626f2161268003e19a763c12fdb941f484ae7993bf031a413a43eba929307"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.6/kagi-v0.4.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b093c4887855bcf7e139ea6083f54502e6ebf3e048d2b22858760e606c481f86"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

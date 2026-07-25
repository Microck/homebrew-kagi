class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.15.0/kagi-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "a22f8356bbe79fb4012da2a2ae442665a292826ed1ddf1b5436d6ca838ec7f43"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.15.0/kagi-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "960a9e06bdd5c451250d36c0b5e6de5ebc2a8049ae9f412b7be2db425ebfdfc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.15.0/kagi-v0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c7552cea4f597640519c7fdf738af5c87a1e44924244060c32adc696032a3fe"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.15.0/kagi-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cddde68ecd474b1fe364b63ca22f5005c34c5499b24ae99e6afe24a8e8d9b1ff"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

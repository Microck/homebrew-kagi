class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.0/kagi-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "b0713a5572e304fee64857c500b9a0641fd210b474ee1b15bc3dec57b5c59d83"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.0/kagi-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "c654e1ac0e46e167eabea8276a79e77cee1be432b5eef555b29b642837f0808d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.0/kagi-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a4bff94ccb905a4602a2d7448b762dd35e6de973edd66bf65f2214be58a7f735"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.0/kagi-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "019ea63adc29d74c50f60c1939ba752250e6b2066374602889aecd99d34aec22"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

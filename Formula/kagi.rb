class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.18.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.18.1/kagi-v0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "a6362e8fa2a4da070303e4518a0a91d92efad05f9709a22909b2e5ff46165e83"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.18.1/kagi-v0.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "81cdd53d65d1b6124486d6186f7d28ec585925ac5f2de364073b3e3e8836c315"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.18.1/kagi-v0.18.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db2aeb1718448abd8a5e5cc19a87b2c501562c66dfe01bd5c453f959f8c10875"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.18.1/kagi-v0.18.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "332eb942f67c51e9c8c9933ee43edcd1c36ff1f0217939d0d6bd81bf56242dc2"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

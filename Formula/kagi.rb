class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.14.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.3/kagi-v0.14.3-aarch64-apple-darwin.tar.gz"
      sha256 "86bd5e52809271e0f5f54809f3f670ffb69b9e6353df979236bc27b14e415acf"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.3/kagi-v0.14.3-x86_64-apple-darwin.tar.gz"
      sha256 "7613dd0638e5dc89ef44a824526518551f49da5984da8bb4aac02d8d4aa0e6f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.3/kagi-v0.14.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7cc018f5b2fabfce99c1772362b9537f95f417dd79cf1eec88e5918b33612b89"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.3/kagi-v0.14.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8fc107f56b7cc1f10f43ea7b770ad6ca9788665bfe03e61e75686bd3fa6a9aa9"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

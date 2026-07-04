class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.1/kagi-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "4e6aecf5a8a971b33da9105151d82589058f010b06bade2bc63306c409ebf414"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.1/kagi-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "c5bf039a65afce4a7d6df0742804d20d2fb30cf67653e365b61088165ca01ecd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.1/kagi-v0.14.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33e5cdb23897e4bddcd7652ad82c828ebddb1278f5d3b2a09ce080d735c3b9ba"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.1/kagi-v0.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "557219a4e3688ab0d42a918f600b8966afc13247f17ee65cbc5a2c5fb4cb462d"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

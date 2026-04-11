class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.2/kagi-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "50ef8dfd5524720653816c6f3ecd6852c831fb6ef2cff710a2009aeaacd8f07f"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.2/kagi-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "426f91b0e0e96cd0b82c441bba1abe1125cd93ac01bb8bbcea8646a7b597a15a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.2/kagi-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "023f81065f933923cbf7d3c006089343dba4bea7fe986826a5aaefbadb38c820"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.2/kagi-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d6762fcc751f312cba64d034c8029d91bc821162d9d08633481e4fba5a3db0c"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

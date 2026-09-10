class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.20.0/kagi-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "83e7365fa4e4de8e2da44b60c058229bcc0d15a62bde2d261ca8a1e174c34827"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.20.0/kagi-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "f907ee08966605e276e068c25a9d2bce16fd9c6be48911e863d1e47bfd91aeb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.20.0/kagi-v0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5d315028b709ebd6713dd79949c568f92bf4bf6a1623f309f8cc46e95336129"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.20.0/kagi-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04ce356ff7fa12fbca8094204f2f7abb436e0f6750313d54281bba208ee5b3b8"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

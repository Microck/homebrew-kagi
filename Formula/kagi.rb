class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.10.0/kagi-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "92a929dd181824f8434db236638d0c25e1aada58b2013e10a4e8313ad877c631"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.10.0/kagi-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "6cd0679311c5947aeff98c1277fd756196643975daf7be0129a3d566f1903993"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.10.0/kagi-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "095e9feb42992d8bf48894bab020fbfd8f19253de14c3a5d16ee880117889369"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.10.0/kagi-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac34eedb511765cc30270c5fa0740cd50e4cc18fa70ca95c6350cf7406e08830"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

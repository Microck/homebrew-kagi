class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "f26d0e9834a861a860513561ed139f5c8e5221eef92d67b66361a091889076fe"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "014c8a03f1d5add4c1cb525901097661cf684d37d393281790b17af86e1410b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6c5982561497bb8e1f354b6f2380b861c4ff83b86538fefad470e37a101e8e6"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "529456e6d9bb952e0aa0c59cee304d9731d7095eba9874a6ff2c50ac0ee59247"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

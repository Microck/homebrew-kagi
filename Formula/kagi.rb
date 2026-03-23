class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.3/kagi-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "568107bf878d0873f4215dc06f6f3e50caf7acb92b548e537a8a465da4dd2c5f"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.3/kagi-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "02bc3c0f27a9a74a0e2e506e1db2ed000c46779298eff42006fcc12885624259"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.3/kagi-v0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6d5a2c9253a89046ee00a372e5985d75d2805e31226d9aecba8999cad5c2669"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.3/kagi-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00c81e0b722c707fe0089d171838b62bb45e405afa5f2c4ca41e8083ebdf89cc"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.2/kagi-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "8a6d9c11fb72095c28117afc569a3c02ac3edb6d2dd7ce44ed159aa7c725ae68"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.2/kagi-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "32707a4634df59b388724be35937b07e9a41f0f5cc0af33e35a4615249ecaed2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.2/kagi-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc086a541336e1fb004b7ed68c087282fc21aef1f8abca620d36edcedeb6553c"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.2/kagi-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82b87b4cab1e0767ebad287c40f9af78fb1e883877bdd9806f1a8592dfa39952"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

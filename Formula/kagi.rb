class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.22.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.1/kagi-v0.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "2082526bfe7d4885c78ed71f11333a4229c2a617d45b2bb3a5f721774ef6d045"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.1/kagi-v0.22.1-x86_64-apple-darwin.tar.gz"
      sha256 "6a59209d4a83a887e4cb5768626bf2300a679eef0a69a4e360d38f5e093f26cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.1/kagi-v0.22.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c046e2efa9a5e53bb8d3a57b269622483c71fbd0d72ee3a2a9830455167ce51"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.1/kagi-v0.22.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb3df515972814bef0f2ba9e2784a07b8663ea087a880ab78aa1f09426f374c9"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

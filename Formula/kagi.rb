class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.13.0/kagi-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "72316e70e29afb929c4d889c7bbf0b4e9f431049aca4ce7ac5d2fa9e491969b4"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.13.0/kagi-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "ef4a85e041097a5801d0a3df03856fb6efd41981302cae4a0ea9096dc06f46e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.13.0/kagi-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "386df90fd35c0fc05d8385b3f6da3c2a0655b5a6545be8d94e9f61b88566ecb9"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.13.0/kagi-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14c24b8eef5cb22fabee58211d4b9c5d304e5f89fcb4c58ad970427d258c3d57"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.8.0/kagi-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "69700d834f4ccfb654819e1807871e82a0f8ffc0dfe876f1db6c165d7a66ad5b"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.8.0/kagi-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "0f1c6783862dc09329ffff781fbb49883af2548e8a213f7f5ebc8ec1db3af9dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.8.0/kagi-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c19cfc2bc55d77c90907f541eba49877478b39e03e751727907718138116de82"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.8.0/kagi-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a614a6440ed262acc7f94dfcab5b3089041a229bf3a0bd4c1769f1c4b1a083c"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

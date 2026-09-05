class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.19.0/kagi-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "2bdd2702f1d455d2ac2564e1ee7cf1293f6bc758b992624c20305dda69fc02a1"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.19.0/kagi-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "fc76b9208043845959656d76b8484085f8b93dd09ad470885c9d626a30922d37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.19.0/kagi-v0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2cddef3ab48440606dabf5779be4add1c5eb2bdf6b99a9a6f5626c399b4791c3"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.19.0/kagi-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "323165866b8a78c7ab0efd1f5e46c87b8fb079c6bb702f0834575f2f59c63c99"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

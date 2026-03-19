class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.0/kagi-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "207c9c3917156ed591ec70ec0305923d2eac72b15b45fe03db9c3d1e57aaff4b"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.0/kagi-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "d6008af4758f42fb1c98d69b2dfaec93745890521023a690ef9dc0b94fea1798"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.0/kagi-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "daa5114fb068f98b454a6a388cd36145177626c479b38bd8bee15d6722d2b75d"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.0/kagi-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "627148a369ce8afdeaad8e20d602235fbe0ed40771a85e0a6a4013ebc6a2f1c0"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

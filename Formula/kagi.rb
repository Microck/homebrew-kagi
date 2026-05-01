class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.1/kagi-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "5402c20128f05b352994974821752b137cdaa93650ce641102d8329278404e89"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.1/kagi-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "08080f7942de5b9ef6d4a5b25cdafe2c06d5f7fb927672d2b4837815de1bb10e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.1/kagi-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "96ac13a5c1907d5b722cbca1499ca32f497ffae34e08f77bed98ff727d3450c1"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.1/kagi-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33109d6fdb39520e432e8479c3d4a797599e39d602d1a76ce77c8bae5e95b22f"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

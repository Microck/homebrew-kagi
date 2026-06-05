class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.2/kagi-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "ffc1e431cdf8a57af21dfada7d975d9c3270d2c0b9ba41b24b06d8546369cdb9"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.2/kagi-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "095f30bf14de8ee2a6c01a5126c3263b21799ff1b3bf2ed40a8f7ea64277a53b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.2/kagi-v0.9.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d60a15bbfed0f753596baf8b694232cdf8056849e7c6040f91a69784e99be79"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.2/kagi-v0.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "656f7f9201f8e0abaa495b3dc4ba800121af8fd35443f03c331b36e9087d991e"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

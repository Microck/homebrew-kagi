class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.7.0/kagi-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "2788eb7d2a84b1ec541ff8bfef9fb25c387fae6fd97d68a0d50ef2fc1681eea8"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.7.0/kagi-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "2cf66588304a11c83e2f4d26e49ec985a7cdf9b43e48d3c3899f1e5a423db343"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.7.0/kagi-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd8d69705fefef6692d896a09ced653f5ba75778de8f00aa3c31cdb112a75025"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.7.0/kagi-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70b90fe6c7f2ae5203172e21805a81dc3b3ff4c488a3195c98738f9288ca4f29"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

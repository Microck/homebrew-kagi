class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.20.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.20.1/kagi-v0.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "7facfbfa6e586c77f0415585adf719b7e56b3b8adee59b65c47439788b5c505a"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.20.1/kagi-v0.20.1-x86_64-apple-darwin.tar.gz"
      sha256 "6071cb0511cb6e044bf38cd887d369527504e3a02c1b5337b4c84879a3672436"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.20.1/kagi-v0.20.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e265d8efa15e92b592b2e76b10bfa6233ff65d3b107c18cb2600c627a81ff8a"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.20.1/kagi-v0.20.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c59bd202fcd333034f6321d39bc41b70651627c3f91ad5af8e1d78c1ae5e484e"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.16.0/kagi-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b497ff076977e7ec3c2b276abd1d7898fb392bfe53637f62822e8de2567bd75"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.16.0/kagi-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "223fea846074e261e282ef5a18758a9f357f011d0c5e953b8b7fed68489db003"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.16.0/kagi-v0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79b430f31dfc7a833c7989b1f94b27966d19acd1f1d022605e10117325331440"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.16.0/kagi-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f77b81b37876f9eee9456e4500bbf08158e052898b4696402533598e462c34c"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

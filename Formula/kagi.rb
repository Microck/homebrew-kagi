class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.3/kagi-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "f8160a015319dfb2934c997bfce7cb979dca047b429ae4c3db2a32831bd9fcff"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.3/kagi-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "0c3f90dad10de003d260459b4bd41747a3287623e1742c520db81b7b6cf60114"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.3/kagi-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f63f101495e3c8d60cffacd80c31c34a6af624955c5cb32f13d28a65dcaf86e"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.3/kagi-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cdc386281e971a13dc0594268eab43a25a7e8b2020b585d24ccc684f5ab47c81"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

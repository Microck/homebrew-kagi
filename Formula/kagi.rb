class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.4/kagi-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "12904bf56391304c99a788567d223e2529f63b755093307c6438539b3865db18"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.4/kagi-v0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "346e77de0b6db4ccd55c0ac6204cf9d456beced8f616218d454d7b55fd1478fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.4/kagi-v0.5.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a52df08dfa61e7efb51358bb8bada3699e38147e08f1204afcc15136cb12bcf7"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.4/kagi-v0.5.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00abf57e73bb6806b52c117cb39236805072534146b4efa6d2327ad124f1af56"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.0/kagi-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "c191dd722279407bf9a7b25ff975b8c2e2b9a600a1b94b00ca0a1c7d221ccfe0"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.0/kagi-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "54af0b4358e74ab8af1fdbcb3dd95b78c4dc41abd92b06b297464eaf5f080eb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.0/kagi-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36abab019294a7f476d3c50b930f26a452837ab19120d7a9201b10589a7e14f1"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.0/kagi-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c90847a9645ad157e98428a8476cdc87d94bc7b27e8d796bf4a02664dba35a67"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "d444d974cee3d95db065b748dd137207aec2a9af6e9be0ab92089c8edff709b1"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "1ae09665986d0cca8638696c12ce2d48db5854f442295a7784cbe5728017b425"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ec6a474b12c72e7e62fe8b75e523f57f43c0a6d0ef974d410e36eb3cba90c67"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "917b5800a665d1922038b13586b8639aaee0cd4f020762b26efb02bd0660f588"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

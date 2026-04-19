class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.4/kagi-v0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "5daf3479b5ca2f518f7d023d8861355e71bd21238977606dea65d07ef62ff233"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.4/kagi-v0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "bc58c8d2d0855308275a6f1f307f0f05fa41f61df554adbfdc6b9c692eaa0fdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.4/kagi-v0.4.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ec676752c313ef5114384d4d89c5ac46c8bf487e2d55023aaa157abacf89dcd"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.4/kagi-v0.4.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21bc78ca849d9aba443a5d8867f9b4b68dc320f8d015fc96754f1c61a5891666"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

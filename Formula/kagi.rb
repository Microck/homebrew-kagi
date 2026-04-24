class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.7/kagi-v0.4.7-aarch64-apple-darwin.tar.gz"
      sha256 "a0db2e97e92a954399ebe56c0d251d561c71ec60d99f2d136a03b39f423fbe0d"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.7/kagi-v0.4.7-x86_64-apple-darwin.tar.gz"
      sha256 "f28b581c6017379cf340578d30c482b9d91df516466d1150cbe32314cc979954"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.7/kagi-v0.4.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0526a6e45c17bb25a9bc1cedd303bf28d5d7cba7b8fdca7df038fa5eeea25fb6"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.7/kagi-v0.4.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9096ceee9462111ad43a225870cd49fdc25927ed3ee49e5fd3d305c2e82a7b14"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

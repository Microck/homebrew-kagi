class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.24.0/kagi-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "c31b88feda5003bd6e817ff51cca7258f626cb9583cf474f88f55f25b55946a2"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.24.0/kagi-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "ceb2c7e5a5e85f87c49de8dc239266c7d50e0fa65726f0c937c2cf46858ec49c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.24.0/kagi-v0.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7292e60aa32dca56986054dae4e8e0dd1da172224f4c4bbfa20fffa3e054617"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.24.0/kagi-v0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8363a7030ddec2bdea1e0784e87fc60ac853e73578543c750846b59c1d327f8c"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

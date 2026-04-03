class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.1/kagi-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "18e99c63cccda4e05058c9630edc7dc672f5b5d8dfd50d5e29a0b2666b3b2dab"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.1/kagi-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "93f8c0e3b8624c1d3cc841d0cdfdf6088e6dd0c22b8fc3fe0cb56b01b2015c51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.1/kagi-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6dee7b73db4c42ab0fcf40960422da70370368d9c7ce73727df8ab665abf59ef"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.1/kagi-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8e147b1f1648d815a2c49cfae1cbca10da3329c6e8eefd3c31ef9f4c222b1ae"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

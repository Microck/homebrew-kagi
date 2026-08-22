class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.18.0/kagi-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "1736392dc3ffe24a85b9a7a667c4e469fa86d3fdb3472c3ce28c6364bcd48bd5"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.18.0/kagi-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "422d4db88ac252fe6aef5123af950c148a6f302e97e0a10ae88274d5bf611d32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.18.0/kagi-v0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15d67b012614b125759fab919ff06498b74ac28b6a93b6112d26d1ab7746ab40"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.18.0/kagi-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51d5f4e743d19905e1fb0c18653bb38543918395af37019484b386ef3edaaf76"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

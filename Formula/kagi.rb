class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.2/kagi-v0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "a6d0d3583d5cfdc079b2ccff6a65b417a4a81484721d8590edaa6e1702618c33"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.2/kagi-v0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "9e5eec83cf2d97e9001eee1f9ada16d9f2667ac75cd112947c89f403c13987db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.2/kagi-v0.14.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6b41edfd1fddf7118066602dd14d346aa3ec880fa3dc06474a5a36d1c70bca4"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.2/kagi-v0.14.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78ea0686657f2d7bec55541ec86889b3edc156bcd677bd80b2f4466b8d9773d2"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

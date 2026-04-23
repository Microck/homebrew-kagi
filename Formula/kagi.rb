class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.5/kagi-v0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "40dc2ca87fb391154b6e3311f5ba304c28d9f388aa0c8e860e6fc5aef1d7c8c0"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.5/kagi-v0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "a847fe088bb0d6a8b6a34ed387c3b9e076db908722b43b03f09d85a82fd8b1e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.5/kagi-v0.4.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85141f45e17dc54d4d4b6647da517623c57ad26ace6997e950cea7656bc5b593"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.5/kagi-v0.4.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1df28db705ae9dbb9ab947c042690335bbfd0950a2bdafe08320cf8e870786e0"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

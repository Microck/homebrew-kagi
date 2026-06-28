class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.12.0/kagi-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "d56d34729d7e8532b161bf38a435067008b04e431430ea1250bfcc074b51f6e1"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.12.0/kagi-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "30fb2f40768515f7736425adf5a8a15aba34bcbbbd4fc8e14b660818bbbd0b22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.12.0/kagi-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddc6ecd3b5d48fe69021d8a97e58e7224539b54d9268e7c425fe6cdf2a0c1237"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.12.0/kagi-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b14d666b0d4029bd9fa24cab24451cf76e8bf0678f11c21d9e19f7c8e255b84"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

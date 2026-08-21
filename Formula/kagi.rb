class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.17.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.2/kagi-v0.17.2-aarch64-apple-darwin.tar.gz"
      sha256 "30325b92b7167e7b7e9dc7be8ccf1732a4931a37814612b7d4ef7fe055d49b60"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.2/kagi-v0.17.2-x86_64-apple-darwin.tar.gz"
      sha256 "6425985f571fc06c50750e5dc8c03ecc86e4fbcd39b7f9bf11ec823f64ff5418"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.2/kagi-v0.17.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e99bae32c7f02c4769744e777fc3918c2af39f3f131702c0701f55f90a5989a1"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.2/kagi-v0.17.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36df3d5fe25487e33b9d48a56887a754f178716acabc3b12af10e372d4dd98a8"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

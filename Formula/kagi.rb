class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.9.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.6/kagi-v0.9.6-aarch64-apple-darwin.tar.gz"
      sha256 "1f8233990c717eaac72a066ee5572b7cd644e7b90ec9969a1c04abf512152043"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.6/kagi-v0.9.6-x86_64-apple-darwin.tar.gz"
      sha256 "a0bce0c50dc0b71ebc9851d43d03ba10df278f5aebbd3950d647e3d821a41ce2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.6/kagi-v0.9.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09625a855cb8343b3f5840701f8e34cd5e6be5cf34381137334a40416fcab1ee"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.6/kagi-v0.9.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6fd27054041c539490c80e77f4f3d08ee1f911e68ee815a794aaeb634db521c4"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

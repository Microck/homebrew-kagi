class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.22.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.2/kagi-v0.22.2-aarch64-apple-darwin.tar.gz"
      sha256 "2f54e618039406268984cb01596cf6790db54bc0ed4497a2cd338802b8a17938"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.2/kagi-v0.22.2-x86_64-apple-darwin.tar.gz"
      sha256 "4744cf6cdb53f216854a044992ec347abf8e829feb8213e5a2e4cae87fa8e2d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.2/kagi-v0.22.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e80c2caabb1f945bbf61aaabe7a74ef00392377c1f5361f736cfbb5e25f4003c"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.22.2/kagi-v0.22.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf7fcc177c2046a5f4305515cd2beadea07aefb2d6c54ed3390e9c6e19236c98"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

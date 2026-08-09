class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.16.1/kagi-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "1766b372a8309cfb98962474eccf24c865df7b98143026dd608a33a2d92826b1"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.16.1/kagi-v0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "e36b3594c87d4108c6e130c2517e0f3e1a203a076028f94ad4176143e0870b2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.16.1/kagi-v0.16.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e885030de5acccea33759185849fc1553a4a466a35eed120e5dd91fe7e4b8f14"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.16.1/kagi-v0.16.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "096de0659dcdb2e90a744eb2dbd5ded3dba4b8c4b77cf5fbc68a37471cd8bafa"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

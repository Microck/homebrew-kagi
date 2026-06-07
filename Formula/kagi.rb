class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.4/kagi-v0.9.4-aarch64-apple-darwin.tar.gz"
      sha256 "7197351e7a5fead91b941b188048a32d066ac1f5e263355c5e49501067d8bc22"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.4/kagi-v0.9.4-x86_64-apple-darwin.tar.gz"
      sha256 "7361c5e7bc889683adab9a9a5d4df10f04d3a47de990562ec434308ce41f303d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.4/kagi-v0.9.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fdfb5fb7841f90751039ba8cfc96760f6cbec18a0e8f605d79dee1a99f69c72e"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.4/kagi-v0.9.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d76ba149b59dec046ee1915e45cfe6cf3ead0c2f83c11c2f4c6726ef340e4c34"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.1/kagi-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "0dabc387a393ba3e0ad57316d3936e5e112d9849ef2f6af081ab422282fdf60d"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.1/kagi-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "1fb91c3d351022fb05f6af728625dbadff44464bf269abd8de57f25c48c6d9ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.1/kagi-v0.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bcc2deeee300270575a68299ea2893dfaef94c186a0912748e8ef4a2ddd83caa"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.1/kagi-v0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "403518d089e614015a4686f3bfcbc5ff3a5aeccf2cefa0855a5bb164ac6581ab"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

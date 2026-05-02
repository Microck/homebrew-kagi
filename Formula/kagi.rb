class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.2/kagi-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "46b8eed0b7c5e01081b97bfe96117dbe10622c0a4f62b57bf044f1ca055890b7"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.2/kagi-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "f0093027e56b4cfcb960e7f409f44c9d665f2db68de248870774b4221fcbcdda"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.2/kagi-v0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2caf85787f8e4a580e87cd0a8bf672ad26401bfa4c5d9243890bb4a6c8e77c8"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.2/kagi-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8354101b5a1e2ad5405cb1c9015b71a9150d8acc28b0e0913db5b741e96ff27"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

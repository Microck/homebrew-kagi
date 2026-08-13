class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.0/kagi-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "0ad8cf1d41290fa1f14dd12cc5e570006218f032e8d7c41946514db7f0e6262a"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.0/kagi-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "b8deba84ed4b228ac1ab1efed9a972c8fd375cbde121c53d4543f0316b91263a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.0/kagi-v0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "832a62dbe6f64e8a2a47e56e0e94e6bc340bca8e398228b58eab21242cdea7bf"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.17.0/kagi-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8418f66380d8983ce4cc78e332a384bdf9aeff0546f6f34e95621ba84a020907"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

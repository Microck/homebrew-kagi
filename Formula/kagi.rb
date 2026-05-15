class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.3/kagi-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "e5017082c2f730a6544e2331fdf3a7356b620edd9a06b224fbeaba3f18a3f8b3"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.3/kagi-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "bf953b49eaa05d1245c5ce03cdf1010ac78dd53edaf296cec75966a3078899e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.3/kagi-v0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "213951027091a62c5841984dd041094eb45d1af79af1fac4bb7962f973dfe89d"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.5.3/kagi-v0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "396254705fb757e1e48138669ceef5582dddf681f426e0133eb1b9abe2b07632"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

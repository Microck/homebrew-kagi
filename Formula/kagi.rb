class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.5/kagi-v0.9.5-aarch64-apple-darwin.tar.gz"
      sha256 "63b20ce8c3b01e4231d3c32bceda0f654187d4a40f3c9e91aedbbb099c8f6796"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.5/kagi-v0.9.5-x86_64-apple-darwin.tar.gz"
      sha256 "fa92ad1f2467aa6046ac053344be83988205a50654ef81da7751653b778d33f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.5/kagi-v0.9.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "496988710b27b0040530997217751b8cba1d6b9692b0cf8df80a70ec00ba15fd"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.5/kagi-v0.9.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a044f8d84a2a11e75e613d5c54db6fdf1ac6bc40f0be712a94d3f488fff94097"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

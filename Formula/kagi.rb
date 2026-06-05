class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.3/kagi-v0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "57e4c3dabedd8df3e0dc45045479b3d287c37b87246f369602f25add9a6cc732"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.3/kagi-v0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "ea5aaf354b65064cc9bbf6499a5c21989cce74c2a54046571ab2432f5b4142ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.3/kagi-v0.9.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b46db5f7ae6717f31b7e9fae8644ee08307707f553ba5f7c65a43b73281ba188"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.9.3/kagi-v0.9.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b59a582ee6e54cc752f15e69e495da3ad1540d26cc509917dcb71da2424253be"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

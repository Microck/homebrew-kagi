class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "ecb29df1eb36f573efee593cf43cf438963d91237207aafe8448e82a5a15779f"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "c0710d48b3da7ca7ab7bbabc77c0e2b94b3fb4697eed3e8cb2b293d28c928427"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd005b54e5337225cfa0645a546b9d629854d03cb02eee67be0f516b67680404"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.3.1/kagi-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b52d55739cb0001a60101fcfc21a8bf7476bc9f05ba52d9801d1039a6b0e3e5c"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

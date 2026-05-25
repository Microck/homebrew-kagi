class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.6.1/kagi-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "a42dec9909b9d99939a8c930d57ff87008c6cc9aa4469f5c870da62d55e3304c"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.6.1/kagi-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "3ebfd78b39b7a2d02eceec7cf7b41d7df9da5a832007d6fd48c959e08d0fce86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.6.1/kagi-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "273ccc3e89d401afd3fe6b02c0ecc0b850fbafde93b47db82ee45cdc4827f454"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.6.1/kagi-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd58ae782956c9bd7dc91c1a232d68054929a011b025d6c64ca882146c0e7fa0"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

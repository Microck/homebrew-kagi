class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.6.0/kagi-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "22850c68c65d0b3b64dc3287504845379bc78db9d16c3df2eee1b4f5f9018768"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.6.0/kagi-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "acd489ba1c3ecaec08b4d0f0a7871784f90aac39923ff9699cb6d17d87ddbc89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.6.0/kagi-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59287643fa0001ebbed526c226a58390a0fbbc8e22350ab241071701e21b24a5"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.6.0/kagi-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "983f743f18c55e0a69424a4f5a36da98cf9031b865fcfda456484f70cf4c9242"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

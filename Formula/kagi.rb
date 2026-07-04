class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.1/kagi-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "bbb3825e55d1374b3551eeb1782d6bb5a38b7a09d7e9064ee3fc3fe436906902"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.1/kagi-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "424eb4845b6a105ea32869a97c6a81b94e8cda3dac6242bbbf77027178b5bd98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.1/kagi-v0.14.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e302ef14fab8a3f5d5ca06f193a04dbeb9fb9752763e4636f3fedbbbada4786"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.14.1/kagi-v0.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "775a799a30a7c784adfa9afc628fe1130c704138d01cebd630c3756af68e5cdc"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi [OPTIONS] [COMMAND]", shell_output("#{bin}/kagi --help")
  end
end

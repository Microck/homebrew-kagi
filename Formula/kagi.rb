class Kagi < Formula
  desc "Agent-native Rust CLI for Kagi subscribers with JSON-first output"
  homepage "https://github.com/Microck/kagi-cli"
  version "0.4.0"
  license "MIT"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.0/kagi-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "17d4430e4997598fe6e3c291f145affc65d7b314481f3b39af025016fd9e7145"
    else
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.0/kagi-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "5a29f43637f3012b0c878882a73d9536d7e86ad429b8ba387fe6d2ed26b9c9cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.0/kagi-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a03f2dfd656c6bd3c2d3837885be0eddad3e00dc4d6b5a4558a6b8a8b3fc3e5a"
    else
      url "https://github.com/Microck/kagi-cli/releases/download/v0.4.0/kagi-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d491b60e9813a0aa40454b6284bea74e599473e874ed584a827b57cf293c478"
    end
  end

  def install
    bin.install "kagi"
  end

  test do
    assert_match "Usage: kagi <COMMAND>", shell_output("#{bin}/kagi --help")
  end
end

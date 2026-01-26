class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_darwin_amd64.tar.gz"
      sha256 "cfad50b5354d944fd1c2c579eb22d7be75e4f7d63f4960f7d342a55967283971"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_darwin_arm64.tar.gz"
      sha256 "998f7f351ba844c755d0232885d86bfb40af1dc0d2ead9ab1b220702e33691aa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_linux_amd64.tar.gz"
      sha256 "41fb01275a39b986d5979b62ee4d5817bda202ef9435b05b3b715811291901af"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_linux_arm64.tar.gz"
      sha256 "3ca70443fdbb1d4f45e44692cf2350bc735b01dc3c907b1a374ca7c6479d8acf"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

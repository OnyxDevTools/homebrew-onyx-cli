class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.14/onyx_darwin_amd64.tar.gz"
      sha256 "3e2c215494e66793a8b9d377461c4d49c8ce60a5f7795ce5b77be6e745c932b0"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.14/onyx_darwin_arm64.tar.gz"
      sha256 "e2aed87c7db659f88673cc4f0f103adc0537833ed289ea0383143072768da073"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.14/onyx_linux_amd64.tar.gz"
      sha256 "a6d0356422791a491d9e2684ffa0ec1d510f903b074057dca6a2d9b1f373220d"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.14/onyx_linux_arm64.tar.gz"
      sha256 "1e6f5809c9cc8fdc3db96610ed3e22ee3dc41349398af15a454457dfeb7e432e"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

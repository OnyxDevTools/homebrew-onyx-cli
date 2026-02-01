class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.4/onyx_darwin_amd64.tar.gz"
      sha256 "95fabe0d6bab827b451acf025bfcb09314361023d8cb170a701b365a0b985e4f"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.4/onyx_darwin_arm64.tar.gz"
      sha256 "b9604e4471c61a3e63d21c9a489c9e834f87a8c9ddf7854aa9a5870f644e9eed"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.4/onyx_linux_amd64.tar.gz"
      sha256 "d3c25b79d237791e4e476e0e624dd491b00ea270aed5d2b36cc7593a4b213c31"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.4/onyx_linux_arm64.tar.gz"
      sha256 "581e9a5c19a2667f282d57fe58a873f6c05b688df87c3d39e5e21a7eb1ef97f9"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

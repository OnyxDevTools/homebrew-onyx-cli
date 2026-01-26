class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_darwin_amd64.tar.gz"
      sha256 "1bae08c2e87fdddd3b2d49102c5db5fdaa15edbfd1cd8080d73381ea85876d75"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_darwin_arm64.tar.gz"
      sha256 "80f5b350dcce9681f51a6c1fae78658f140c2abe185b229eb33b0be5c1d141b1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_linux_amd64.tar.gz"
      sha256 "337ea4d136970c71031316b8b2ddf69cb84ec4a86d9ec4e0f6b19847ad1468f5"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_linux_arm64.tar.gz"
      sha256 "e842dc9d62ce6f464e06071a6db4c4a939e259c8fe47bcd5456bb2caedfac482"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

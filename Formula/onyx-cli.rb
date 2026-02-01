class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.3/onyx_darwin_amd64.tar.gz"
      sha256 "c4594c5fb0084456fdbb6c5cd6beb65979bff46138e1a3811ad018543be96740"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.3/onyx_darwin_arm64.tar.gz"
      sha256 "45b168c015627e1097b5eeabf1cacc508abb72e0aa015f778d3ab66dbabbb446"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.3/onyx_linux_amd64.tar.gz"
      sha256 "ea81cf14c93bc788f2d010f4d43717f20630e9e54e60ab78497cc85435378708"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.3/onyx_linux_arm64.tar.gz"
      sha256 "35cae9611499b58d882206b24aafd18f4b6509e0cdad79bd80df9bf1c160ee5a"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

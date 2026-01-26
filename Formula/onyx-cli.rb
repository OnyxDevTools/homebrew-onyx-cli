class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_darwin_amd64.tar.gz"
      sha256 "edaed6cd1dc86397c927804c972aed2f2b47c1406fca530c90736447458af3fc"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_darwin_arm64.tar.gz"
      sha256 "b5c685194698ec1cdc775b5244dafeecf9d9cb592f4982c7ff4e77d7f8d8b1b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_linux_amd64.tar.gz"
      sha256 "f5ec603255ae2225c3000a420bd2179518b21adfa9c7c2798e5bf448b168969e"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_linux_arm64.tar.gz"
      sha256 "872a7fd7656a2c10900cfbcd605bf949feef8a1af1c1ad9859f31ba354199c81"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

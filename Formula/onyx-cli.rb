class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_darwin_amd64.tar.gz"
      sha256 "1d5b76f623371e43205eb1677dec64cc8ac93fd80107d3742833d799f274fb08"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_darwin_arm64.tar.gz"
      sha256 "9474ca5e0c15a76b30e9101578517ebf09c09cfde88203b571a17cfce94b090f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_linux_amd64.tar.gz"
      sha256 "ae8486fe27b2525f3baea0b6c088f6d4fecbaad2e1d1eefd1c65232f7ec47bcb"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_linux_arm64.tar.gz"
      sha256 "1a88d3da074fe089402a0e1a0892b57fdd1555e37ced91c1d2d276811faeaf5f"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#{bin}/onyx version")
  end
end

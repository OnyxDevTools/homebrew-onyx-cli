class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.0/onyx_darwin_amd64.tar.gz"
      sha256 "9f084b04ef1c45fb19f7e1d0e5f3460687e7ea5393dc3b5facd9c8581c8895f2"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.0/onyx_darwin_arm64.tar.gz"
      sha256 "5bc912169746525a62ab1998cb471282abca856110395aa5d6eb134fb7b53547"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.0/onyx_linux_amd64.tar.gz"
      sha256 "9277769f48dee209ac60d07ca11710b9a74ca330b4e9ce34b564071557b0c982"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.0/onyx_linux_arm64.tar.gz"
      sha256 "ab538f27432dec0a48c4fecf9c42a3dc0131e6ed0ecb35aa2a01f72795ab8e56"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

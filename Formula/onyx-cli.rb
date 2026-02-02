class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.13/onyx_darwin_amd64.tar.gz"
      sha256 "118973b81a10997fa469841197efd8edeef8d570e4f9b99c4633c93afa4bd376"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.13/onyx_darwin_arm64.tar.gz"
      sha256 "7dbd9d1cb19603975115eea373f1a8a050906725befe8f0565d4ae09198b8762"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.13/onyx_linux_amd64.tar.gz"
      sha256 "a2abce4ba81ae30b15f8ca7991b26a1c2aa5e88da485182679a5ab39dfc7c634"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.13/onyx_linux_arm64.tar.gz"
      sha256 "98c7755d205948c022573a9465b6b1b9c07856130c16ae66d759478499245e78"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

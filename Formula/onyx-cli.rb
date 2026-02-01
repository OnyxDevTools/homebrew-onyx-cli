class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.10/onyx_darwin_amd64.tar.gz"
      sha256 "7a3431b86c3a92809e624d9cbcdbd908eeedf448c162303005e93277d98bebfa"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.10/onyx_darwin_arm64.tar.gz"
      sha256 "5d67537362b3e77a99f71d83b2a63a63da070efff67f329811ecd00bfbd0e9b4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.10/onyx_linux_amd64.tar.gz"
      sha256 "322b287f7fe2f0f856242964799d71c2e4a017023919f074fc61d6ef00bf5f7e"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.10/onyx_linux_arm64.tar.gz"
      sha256 "bf006fee0bac9063fa2c217d3d9ad929a5e496ff8973ae88c1d56c0b6eae277f"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

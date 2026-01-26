class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_darwin_amd64.tar.gz"
      sha256 "badcc819fb6b75f7437e5418cbd21229b8387afff2d7a264f8ddfd9af29d19e1"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_darwin_arm64.tar.gz"
      sha256 "906e742a816a690c89ee87a76c0a46e6d1766033f0d80a4f6bbc6e4e32dae1e4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_linux_amd64.tar.gz"
      sha256 "e1d88eb499979dbd313afe9d6c6e8ce6db67b34a0e4a9ef62c5ac5a0e157a2f5"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_linux_arm64.tar.gz"
      sha256 "ffde1d4659d728c99cdbe084c7a8efbdc28b17ec85c8c818df05bc45fcdf3f4d"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#{bin}/onyx version")
  end
end

class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.12/onyx_darwin_amd64.tar.gz"
      sha256 "df023a38818ea364d1aef6e96e172bf81a7fdf70094e10c4e85ac243ee7d2171"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.12/onyx_darwin_arm64.tar.gz"
      sha256 "6afd7d2d72c85ba8f24724721572ea4d7dc8fabebe046b1a575a6b7816cb25fa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.12/onyx_linux_amd64.tar.gz"
      sha256 "57ed035341211170cbf2c5b2cdfede4ff19824e507d6c78430a036b0d1eba19c"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.12/onyx_linux_arm64.tar.gz"
      sha256 "b93848276dc63920ebd3174ad74fe8e2538ef00c6a737a0e529db89cf08c6928"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

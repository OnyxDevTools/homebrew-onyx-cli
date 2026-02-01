class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.2/onyx_darwin_amd64.tar.gz"
      sha256 "8e02096b28f64eb379edf2e8be838f5d9ad76101a531d2d4f925c77626295b83"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.2/onyx_darwin_arm64.tar.gz"
      sha256 "7630e3fa1e44214edd7d8e165f83a115ecd13cb7118d072d09c626692b871189"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.2/onyx_linux_amd64.tar.gz"
      sha256 "6e0215646eebe2e37f656889321c468c5bba5d9f35ff37ef4133b3cd51ef56f3"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.2/onyx_linux_arm64.tar.gz"
      sha256 "f6e1447b3039c5293c706c317f5cea12010ef3d144ca1e142a19e81a2e6b4bb9"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

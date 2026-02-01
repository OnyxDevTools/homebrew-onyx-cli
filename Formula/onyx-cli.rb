class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.7/onyx_darwin_amd64.tar.gz"
      sha256 "f5883598f72affb842af58ff23cdde2a5debf49b1c53aca9523b5498c4de9fc1"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.7/onyx_darwin_arm64.tar.gz"
      sha256 "acc888105dcdd2b2d76ac06e7bd03b54f9328e25791c455a3fb1b69c579cc40f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.7/onyx_linux_amd64.tar.gz"
      sha256 "60e121e1bf7ac143f0dc44df792dad7547d6c8177cc47e1f025cd068d5a59f00"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.7/onyx_linux_arm64.tar.gz"
      sha256 "b617b897ede7622bea1396bb96af32dcb3eb8d4a912f5ace7ba497853abc3fe0"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

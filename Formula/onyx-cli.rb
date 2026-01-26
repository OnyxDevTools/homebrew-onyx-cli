class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.10.0/onyx_darwin_amd64.tar.gz"
      sha256 "ce9b950398d1b6ea673796a32d108c7fdc50a51060ddc4e26d92ba6c32a892f7"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.10.0/onyx_darwin_arm64.tar.gz"
      sha256 "d6c698c98774131ed51dee3e02caf1930bf20eb1fc9e914ea3b47fd435b71f46"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.10.0/onyx_linux_amd64.tar.gz"
      sha256 "cfb16ca400578183d7d5cf0aeb097c6764f7b8b0c4fd61867fc58b52ceb3b85d"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.10.0/onyx_linux_arm64.tar.gz"
      sha256 "c0057171f947f3fa10e0ceabe9d5b267ae3944bf9c2fcfeb26c64944c432cf2f"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

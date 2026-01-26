class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.8.0/onyx_darwin_amd64.tar.gz"
      sha256 "ae5f3534d66c70d3454f353751f41922556586011deb0317f99145c503a4b869"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.8.0/onyx_darwin_arm64.tar.gz"
      sha256 "a0a575dfe8c7a83e3e345e58c0800f9e3485a40d894a9bf053a794d9461d0b91"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.8.0/onyx_linux_amd64.tar.gz"
      sha256 "dc21af9d8fe84f8123e9bed3432fa6aeba8447686b72b753a1b9db7b31deb524"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.8.0/onyx_linux_arm64.tar.gz"
      sha256 "a4b8daae3afd13ac846d041ab86ce56f8212596bd2f8c174229c2a41c7564663"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

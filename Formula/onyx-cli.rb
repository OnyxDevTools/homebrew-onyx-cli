class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.9.0/onyx_darwin_amd64.tar.gz"
      sha256 "be2c299667c0c7bef8819c599213094988be7f2007830f47c31527f56d7e93ee"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.9.0/onyx_darwin_arm64.tar.gz"
      sha256 "e6d15d7ce71f0ac64f55fc049b1c92ad11af6dfe590582870ff783a90c01a1c8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.9.0/onyx_linux_amd64.tar.gz"
      sha256 "0e1b2ed5f3732afbc2095214bd69f4a207407f2ebca3ab83bf3348bb2738085d"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.9.0/onyx_linux_arm64.tar.gz"
      sha256 "39f57b7822d2b0da781885e736ea87981b77924fee37491ceecd42528efb1262"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

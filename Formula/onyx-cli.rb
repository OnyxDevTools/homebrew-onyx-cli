class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.5/onyx_darwin_amd64.tar.gz"
      sha256 "cfd5df18820f49c70494b8c87989a4ad672fdab77487a0766a0f92ddb0e4f1bc"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.5/onyx_darwin_arm64.tar.gz"
      sha256 "9fb78d5d53c2467c51c51a5769f4c98cb91fce88a7a96fb9faab187d84392893"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.5/onyx_linux_amd64.tar.gz"
      sha256 "de4eb6c82a8a04f2d20758942133ee9f4ee2c9c0c721cbd2ad9e1ff09f229b54"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.5/onyx_linux_arm64.tar.gz"
      sha256 "8490fdbe46366890e29f53c2ee2d84a01f340405609fa451c5d9b5df4a54b9c6"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

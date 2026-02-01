class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.6/onyx_darwin_amd64.tar.gz"
      sha256 "59363e9a7fa28a8189c59f31b25b3b5a94b58a50ca28f9ef918b72b15fc670df"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.6/onyx_darwin_arm64.tar.gz"
      sha256 "e4e8a3d239f7aaa78afea8847cb6fcea1c873e97a2005553b8a33f7fd5575dc4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.6/onyx_linux_amd64.tar.gz"
      sha256 "921372ed69009fdc0411e4a554c3ea7c3ac8986bd42f689521c3aca03721389e"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.6/onyx_linux_arm64.tar.gz"
      sha256 "65519c0bf49ea75750afa29cc456740424d7491b9f99faeacc5f152e422e6369"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.9/onyx_darwin_amd64.tar.gz"
      sha256 "e0153de52c518566e8f67e47150220172fc8f580d0e82c9558aaf4a93627a59f"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.9/onyx_darwin_arm64.tar.gz"
      sha256 "41c45f94ce563f51dfeb1b0d0ad033a96d52b72bb47a176ab7087d7c379c27d6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.9/onyx_linux_amd64.tar.gz"
      sha256 "1753dc84bacb8f5c5f96cd2778e629e5da248c20c52a59b6a9faf6227927e8e0"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.9/onyx_linux_arm64.tar.gz"
      sha256 "e68df3c67949f3c1b02da0c9c6ea3fd81e15b6b6be85abbf44a134a49239b2b3"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

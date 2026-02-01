class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.8/onyx_darwin_amd64.tar.gz"
      sha256 "97454c640fcd66a03dbfda25e876bb1e2b6c138e4b58678cf9ad16d807349206"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.8/onyx_darwin_arm64.tar.gz"
      sha256 "ec5690a5cc21ee902af627e59cb76781c5f70b100c44ca1f0010f1ffa8b7f253"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.8/onyx_linux_amd64.tar.gz"
      sha256 "9ad7357d5396e2500ce9896934b6b7aeb64e917bad7485a6f71baece9d1fe6d0"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.8/onyx_linux_arm64.tar.gz"
      sha256 "0b597173a29a322a2ff8fa917f049f5da5a3fb7a1adce2872ae3ffbfebb3a9ce"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

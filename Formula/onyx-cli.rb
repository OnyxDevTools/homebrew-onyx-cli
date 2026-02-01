class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.11.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.11/onyx_darwin_amd64.tar.gz"
      sha256 "233daf12706c0a92b2961dfd62f7d123ca8f22c389f5a6634126acbb5a7f0f59"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.11/onyx_darwin_arm64.tar.gz"
      sha256 "29ca58b99ae84b9ff4c077422a9356da071d2026f66e9474899513ddcd5cf0e7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.11/onyx_linux_amd64.tar.gz"
      sha256 "e533c16b3483ca2ff567c603a29a2003dd11082e30b1d2d718619158aecda95f"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.11.11/onyx_linux_arm64.tar.gz"
      sha256 "15996497387ad65552c7be0b56e91626851d35682c6f8ead7b52be36c3cd496f"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

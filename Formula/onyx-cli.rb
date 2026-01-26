class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_darwin_amd64.tar.gz"
      sha256 "fe3cc6bc4d6e058a9417f481ed451033c7c71a2b32c40283462254c42ae98384"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_darwin_arm64.tar.gz"
      sha256 "e1260612a499c59cff16f633cc0e7d6e17680b3a811f3e792a93c361f2e9abf6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_linux_amd64.tar.gz"
      sha256 "44b66088babf80614521f48b23b713f1c34116549aa9963cf1b75f3929f1703d"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.4.0/onyx_linux_arm64.tar.gz"
      sha256 "eff42c3ec9361a4a35a15bad3ee878cddb2721bbc7a6d53a3a57959d876bfd5a"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#{bin}/onyx version")
  end
end

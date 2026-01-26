class OnyxCli < Formula
  desc "Cross-platform CLI for Onyx Cloud Database"
  homepage "https://github.com/OnyxDevTools/onyx-cli"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_darwin_amd64.tar.gz"
      sha256 "08f00130a3a995aa056bf0643822c78f2243b16e3f801c8fa87811f905a5826d"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_darwin_arm64.tar.gz"
      sha256 "8e9c28c9fbca133cb019cdaf2b8930202c8556509d1a6ad89ffd97df33684935"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_linux_amd64.tar.gz"
      sha256 "42d87f4d4544bdd646460727b941b82f62da5d7f8c148bb86133fab0165f4d28"
    else
      url "https://github.com/OnyxDevTools/onyx-cli/releases/download/v0.5.1/onyx_linux_arm64.tar.gz"
      sha256 "b16b2a5b652c3b1f4bd71121454e8192a7b730ec9eddb099d034267e234f9903"
    end
  end

  def install
    bin.install "onyx"
  end

  test do
    assert_match "onyx version", shell_output("#<built-in function bin>/onyx version")
  end
end

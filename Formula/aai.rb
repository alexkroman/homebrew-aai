class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai"
  version "0.1.1"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.1/aai-darwin-arm64.tar.gz"
      sha256 "2309a308406db5de8ac463965b48a6ca93a9f03446fb981a6d0a5d1211a03433"
    end
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.1/aai-darwin-x64.tar.gz"
      sha256 "b6483afba7972993d0882cc483a503d4c3c2e17853d494163cff6389cf4497c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.1/aai-linux-x64.tar.gz"
      sha256 "d8c4ba3a179a91fb0990a4daa84e758589798c55371fcc30419cfe494dbb51a6"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

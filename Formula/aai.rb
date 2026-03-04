class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai"
  version "0.1.0"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-darwin-arm64.tar.gz"
      sha256 "ece5a703634eb2ed990c2fcfe892b008a1d6f1244fd1dbe1d8681d65d79b3e4b"
    end
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-darwin-x64.tar.gz"
      sha256 "c502cf7c119e5d1931c9dbc9b960d2e35b4e654a19040cd771723d42a092b921"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-linux-x64.tar.gz"
      sha256 "6d368ca3fa3c679f0cd2d7ce6f0a622ce4cf079e23201ae8cd170618d67b37f3"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai"
  version "0.1.1"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.1/aai-darwin-arm64.tar.gz"
      sha256 "5502c90742b7c559fdf11357a1f3bbfb1822c1747ed19ecad653c2e307c7a1b8"
    end
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.1/aai-darwin-x64.tar.gz"
      sha256 "25c6221bb3a9bb1536291d89161019b092bee8113d0349323c88d3bd4e1a72c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.1/aai-linux-x64.tar.gz"
      sha256 "78fb35f903f99777111be32fa4fbd5c7b62700de7691a77a6105294cd3127c14"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

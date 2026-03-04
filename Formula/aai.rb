class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai"
  version "0.1.0"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-darwin-arm64.tar.gz"
      sha256 "26c0b7fab8c66e6d1d9c83e4a53f72606c0c188116a48186a82c819de9848255"
    end
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-darwin-x64.tar.gz"
      sha256 "cabefb9c186a086b31a297e26d80ad9834bec226957e33986136ca4a0a500556"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-linux-x64.tar.gz"
      sha256 "2d001c8db462d9814233953cc5d20792ace1fbe236d78b3b0471034f26dd8a2a"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

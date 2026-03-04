class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai"
  version "0.1.0"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-darwin-arm64.tar.gz"
      sha256 "4c4af3c2ddd7e09f1bad3aa67549eaedf802b89e7d06ef771fded00b6614ad4c"
    end
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-darwin-x64.tar.gz"
      sha256 "337b40843905b60410a68a9c476b410779a2152de5ed919bce63212962bed8a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-linux-x64.tar.gz"
      sha256 "8f9253960457d16b482f3cb3cbd44a9244d39e8f861616906dd9d59bcb30e9d3"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai"
  version "0.1.1"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.1/aai-darwin-arm64.tar.gz"
      sha256 "aa78021d2f181970da255125f60364c8db6a8a553c5f35bf87854fdbd9362b0f"
    end
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.1/aai-darwin-x64.tar.gz"
      sha256 "2aa8e00886d78d76c5a56f10501811252ff7f5d8e6b1d9e6c5049620174842eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.1/aai-linux-x64.tar.gz"
      sha256 "0ab18189e61740ff82e2ca606d5b5f4463b5c9dddb6838770555db28e21ad370"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

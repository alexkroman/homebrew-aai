class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai"
  version "0.1.2"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.2/aai-darwin-arm64.tar.gz"
      sha256 "5c80351c75837dc102b0905dc5ca0c507a46d25df36d52dcda7252fc80e66546"
    end
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.2/aai-darwin-x64.tar.gz"
      sha256 "74bdb99ab1ccf82b84e82d15a1b59538af61dd379fff15682fedce98ff1c4cf9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.2/aai-linux-x64.tar.gz"
      sha256 "bde7d16dab873a4328872c4d0c43f5a2644ae89f2181d46378724f71f957b8df"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai"
  version "0.1.0"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-darwin-arm64.tar.gz"
      sha256 "0f907578d416b2e87508550bccd24dfc69dd0ec91ede44129829ec44aedc494e"
    end
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-darwin-x64.tar.gz"
      sha256 "d857e362abdb1e17a63114e87f09572706fcb97795971624f6966a5a989a70c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-linux-x64.tar.gz"
      sha256 "09ac06f7795b8956e62c3d41e1298d7ef4a4d673e4c114e81e6f7e9f798a80bc"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

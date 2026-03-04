class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai-agent"
  version "0.1.0"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-darwin-arm64.tar.gz"
      sha256 "ab3d4ee6b56a4c9e1600bbe0e89c1cc21ab0885c01cba15106ea5880435406d2"
    end
    on_intel do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-darwin-x64.tar.gz"
      sha256 "379e4445604f3e78b34902d59b5d4b85accaef1fc31312ca6257693cbce2c767"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-linux-x64.tar.gz"
      sha256 "a5f96741e7e50cea48553b4acb86169b720729a3b27654921b08afa9957c9738"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

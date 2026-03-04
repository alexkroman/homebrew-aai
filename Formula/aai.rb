class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai-agent"
  version "0.1.0"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-darwin-arm64.tar.gz"
      sha256 "f07350c90d5c9b72ed114e06b109bd91376fb0909e8114c9b2fe0f85e07d3723"
    end
    on_intel do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-darwin-x64.tar.gz"
      sha256 "8777a1949610ea89a19fe31b7dcb9d3fad386ffd8b720c3303efe9d57ef16e52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-linux-x64.tar.gz"
      sha256 "97d261a009e95aa7d66edcc0dbe104fa332aa568e1f8c2d959807ff5514b5713"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai-agent"
  version "0.1.0"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-darwin-arm64.tar.gz"
      sha256 "ff11dc2f3779b7624968437c3460a3530ee368ab51d8b6e863fbd9f4a33ab420"
    end
    on_intel do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-darwin-x64.tar.gz"
      sha256 "35d90d48bcc85f103d7c8248107ef3c89523193fa03f70b53bd632e07964fe5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-linux-x64.tar.gz"
      sha256 "8b2f89311c439fc11a129b37c4030156a47fc4eb15ea171417b2bbb27c3da8c6"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

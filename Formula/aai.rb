class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai-agent"
  version "0.1.0"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-darwin-arm64.tar.gz"
      sha256 "48fd0d8db76ee083f13803d359c6714161a72b099fff3d163049d3d20ebb967a"
    end
    on_intel do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-darwin-x64.tar.gz"
      sha256 "e482518d9a74b51e0ec5b15993a4be977fd13a06f87f62b54f050c331a2da305"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai-agent/releases/download/v0.1.0/aai-linux-x64.tar.gz"
      sha256 "2f4eafa1c8f1cb84e5a89aa4962e65da9a27c0359cab64eff8b68bcecd515c00"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

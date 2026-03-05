class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai"
  version "0.1.3"
  license "MIT"

  depends_on "esbuild"
  depends_on "cloudflare/cloudflare/cloudflared"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.3/aai-darwin-arm64.tar.gz"
      sha256 "65df18da6d38a5b743ca4f891dcb123e715993782ed104a84167437478c1c949"
    end
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.3/aai-darwin-x64.tar.gz"
      sha256 "d3c8441c1495c6bca17e985fb175998f32370b3567b9a96cd5a2f5a860bab720"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.3/aai-linux-x64.tar.gz"
      sha256 "9754701fe7fa07c98962cbd5a19a2a184a28ad16b9ae7bb650c4ac36675383a7"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

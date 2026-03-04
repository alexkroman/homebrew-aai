class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai"
  version "0.1.0"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-darwin-arm64.tar.gz"
      sha256 "25cd3b0821e400134f072123e349d7653c6f48472356d53e9b2ac47fdf961f1f"
    end
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-darwin-x64.tar.gz"
      sha256 "a0ac9a2344d09d1be5ba855ea7ac6a6ee6f1a1dc2e54c54fa5d16d76612f896f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.0/aai-linux-x64.tar.gz"
      sha256 "68dff09cc4cd2916973f5caf019dbbe6bca518d2dda0ae314fedd6327dc44e41"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

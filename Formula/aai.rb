class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai"
  version "0.1.2"
  license "MIT"

  depends_on "esbuild"

  on_macos do
    on_arm do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.2/aai-darwin-arm64.tar.gz"
      sha256 "484275c137ac3a9dc63edcbd51002b54c195bfced76dd8926707049324497292"
    end
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.2/aai-darwin-x64.tar.gz"
      sha256 "ba3e5331ec23855e92ac96a86559b293db6ce3ad0d8c8b02b9fa8c4c93cca093"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alexkroman/aai/releases/download/v0.1.2/aai-linux-x64.tar.gz"
      sha256 "675f07a1f12178838dd22b17b88106d3d06e40a6c19562968d9d1eaf63601265"
    end
  end

  def install
    bin.install "aai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aai --version")
  end
end

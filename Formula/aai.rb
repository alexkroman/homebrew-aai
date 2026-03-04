class Aai < Formula
  desc "Voice agent development toolkit"
  homepage "https://github.com/alexkroman/aai-agent"
  url "https://github.com/alexkroman/aai-agent.git", branch: "main"
  version "0.1.0"
  license "MIT"

  depends_on "deno"

  def install
    # Install the full source tree into libexec
    libexec.install Dir["*"]

    # Cache deno dependencies
    system "deno", "cache", "#{libexec}/cli/cli.ts"

    # Create the aai wrapper script
    (bin/"aai").write <<~SH
      #!/bin/sh
      set -e
      export INIT_CWD="$(pwd)"
      cd "#{libexec}"
      exec deno run --allow-all cli/cli.ts "$@"
    SH
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/aai --version")
  end
end

# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.11.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.11.0/sovrium-0.11.0-darwin-x64.tar.gz"
      sha256 "139eeea12aade1e1f3938d405e585de494f7402b13b935f36d3298305a19a1fa"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.11.0/sovrium-0.11.0-darwin-arm64.tar.gz"
      sha256 "56dc1a348828b3c231e13b71807659583ea3067137d36b8a49b924fd9ae3009b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.11.0/sovrium-0.11.0-linux-x64.tar.gz"
      sha256 "f95452ed0af65b166075118c53bfe17b71b94b42b740d0d386904322d20dcabc"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.11.0/sovrium-0.11.0-linux-arm64.tar.gz"
      sha256 "424a5de9cd7e2aab8d9aead405e52f0a027caeeaf93543df7d65fcf281738525"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

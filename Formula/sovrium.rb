# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.34.3"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.3/sovrium-0.34.3-darwin-x64.tar.gz"
      sha256 "dc3ca649f7bcc2b8f42fc4c07a28e5aef20ae90cd357b10a45df3cdee5e76314"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.3/sovrium-0.34.3-darwin-arm64.tar.gz"
      sha256 "35dffc4598b1e2708446e9bb85644bf48d7378fc662786a327b0d6c4aa984dc9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.3/sovrium-0.34.3-linux-x64.tar.gz"
      sha256 "d66e5410bcc7169fd47f34c82f5fcc0022323572e480b74daf0ba24d12113828"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.3/sovrium-0.34.3-linux-arm64.tar.gz"
      sha256 "83e7cf712baf456719370fb44ff5431d0b84707ea43eb1aedaa007823eccb17f"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

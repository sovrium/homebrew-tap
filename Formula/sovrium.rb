# Homebrew formula for Sovrium
# Auto-updated by scripts/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.5.3"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.3/sovrium-0.5.3-darwin-x64.tar.gz"
      sha256 "1512d923f376c9887e587596e56bbffe974b8c9d5952c8263106eab06260d39a"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.3/sovrium-0.5.3-darwin-arm64.tar.gz"
      sha256 "8834c6ed376e7f20b1df06bf684b4b88cb6f30fb6c02023b1fa4cc01df51913f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.3/sovrium-0.5.3-linux-x64.tar.gz"
      sha256 "b64d22a2701330af67b3018ab3d08f5ab0481f112cb19fd745e0c75def41c28d"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.3/sovrium-0.5.3-linux-arm64.tar.gz"
      sha256 "600dcf9bfc573c9914f407900291c4ea9f04f620117e9d8159724be1f5785b18"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

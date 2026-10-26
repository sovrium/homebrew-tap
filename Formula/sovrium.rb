# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.45.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.45.0/sovrium-0.45.0-darwin-x64.tar.gz"
      sha256 "3b53da94eade71bf22b5c3b304bc744ea74fffb194dc55194e2c23af14a4912c"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.45.0/sovrium-0.45.0-darwin-arm64.tar.gz"
      sha256 "92757d018002586617a0dcff6c2cac0d21affd94a39617e676c533ac5440cf56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.45.0/sovrium-0.45.0-linux-x64.tar.gz"
      sha256 "de07b1666da0cf2e5ee2a47b4d2478cab9892cc6bc1d23a1056f3a812a38f6bd"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.45.0/sovrium-0.45.0-linux-arm64.tar.gz"
      sha256 "887ff6d361863347ce3fb72460b54aa9c42d3f7b2ff40e7e1c026ec3301d1b99"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

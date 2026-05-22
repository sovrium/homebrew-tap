# Homebrew formula for Sovrium
# Auto-updated by scripts/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.5.3"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.3/sovrium-0.5.3-darwin-x64.tar.gz"
      sha256 "CHECKSUM_NOT_AVAILABLE"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.3/sovrium-0.5.3-darwin-arm64.tar.gz"
      sha256 "CHECKSUM_NOT_AVAILABLE"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.3/sovrium-0.5.3-linux-x64.tar.gz"
      sha256 "CHECKSUM_NOT_AVAILABLE"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.3/sovrium-0.5.3-linux-arm64.tar.gz"
      sha256 "CHECKSUM_NOT_AVAILABLE"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

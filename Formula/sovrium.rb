# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.46.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.46.0/sovrium-0.46.0-darwin-x64.tar.gz"
      sha256 "37b163ce1d7591c7066ffa4b4f6cbb66cc38ad649a1757a4923291c22fec8131"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.46.0/sovrium-0.46.0-darwin-arm64.tar.gz"
      sha256 "fac4c1ffde02718d582d2f5e11f5a91333c5be442e324df24188f250e1ca5d97"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.46.0/sovrium-0.46.0-linux-x64.tar.gz"
      sha256 "f1c580a8c2ae21f703687349771c603234ccc378b1becaa9981998b154563ecc"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.46.0/sovrium-0.46.0-linux-arm64.tar.gz"
      sha256 "0e70de65661534b5db0f71e8482b85d93cb1846540d7e87b29b01e6366412bc0"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

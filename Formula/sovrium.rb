# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.18.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.18.0/sovrium-0.18.0-darwin-x64.tar.gz"
      sha256 "6a77cea8cea8530a79ac4d345a22cd0f68c9e951463981dec17cc9c785c525a8"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.18.0/sovrium-0.18.0-darwin-arm64.tar.gz"
      sha256 "f95348459db421ebdc5d558e54dbd31daadb537c4cca6903591f281ca90ae6d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.18.0/sovrium-0.18.0-linux-x64.tar.gz"
      sha256 "8044330cc145473ba163d3e232e2a488ca255ecd3149d465b90994aa48c79d06"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.18.0/sovrium-0.18.0-linux-arm64.tar.gz"
      sha256 "892a3bb806eff8dc3d850808e7d919bad741d18bcde7788938878ff55dadd810"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

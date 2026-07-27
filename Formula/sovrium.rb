# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.20.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.20.0/sovrium-0.20.0-darwin-x64.tar.gz"
      sha256 "cc95a229d71f02839346200855dfd8168b4a7252ddeadff50386b99a8ad63153"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.20.0/sovrium-0.20.0-darwin-arm64.tar.gz"
      sha256 "83f746c80250698875fad992985e89bb332bb2743f65340f3da4009a5257d002"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.20.0/sovrium-0.20.0-linux-x64.tar.gz"
      sha256 "50469ced47dad92c443b4089560dc01bb6297dedcc802753bbe05f033549bf78"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.20.0/sovrium-0.20.0-linux-arm64.tar.gz"
      sha256 "2dad09ee6a8aa0e3db57029c874241dab5cf2dc12fe7c15a58820911365b0f23"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

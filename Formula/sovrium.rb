# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.14.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.14.0/sovrium-0.14.0-darwin-x64.tar.gz"
      sha256 "84c80799a74d796b5972407da06e87617fb96ed95a3a63d77a344694e34c4872"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.14.0/sovrium-0.14.0-darwin-arm64.tar.gz"
      sha256 "2074792301b7ead065c0a62cdbad55dd05d332172831e0c2a9bc992cbbc13258"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.14.0/sovrium-0.14.0-linux-x64.tar.gz"
      sha256 "3d0c388c595a5c5fe4a81fff0331328c8543fe8de998dc2a815f2480103903db"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.14.0/sovrium-0.14.0-linux-arm64.tar.gz"
      sha256 "153e92557e8f1968a40183e044dc5d256b3df7d38382654213c933063f4a7509"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

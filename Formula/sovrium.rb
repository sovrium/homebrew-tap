# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.29.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.29.1/sovrium-0.29.1-darwin-x64.tar.gz"
      sha256 "ece002ce9f2657c28927154ad0bfb402c2d1b60ef923e357f2a66fc330f82fb7"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.29.1/sovrium-0.29.1-darwin-arm64.tar.gz"
      sha256 "6e2dfd27a479d3b14a2cc19bd99b13e60ceafa84c8fd4f1847bad945e7366811"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.29.1/sovrium-0.29.1-linux-x64.tar.gz"
      sha256 "308e6e2f19f6d19bad5ff93352d07a95921f22992a42c05d71322d5e5958b129"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.29.1/sovrium-0.29.1-linux-arm64.tar.gz"
      sha256 "890acd38436d5df5bb39a107a588c6bb4ff60bcc280cb884436427d68e84aa53"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

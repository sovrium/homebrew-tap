# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.42.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.42.0/sovrium-0.42.0-darwin-x64.tar.gz"
      sha256 "d098717c0fb65422c4f012949819618329f01d9196a84c06f1621ba3d8892ca0"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.42.0/sovrium-0.42.0-darwin-arm64.tar.gz"
      sha256 "dc29047784a9a44a017b199f3a88a000377b46649c59df09bc91b9026c4fe9cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.42.0/sovrium-0.42.0-linux-x64.tar.gz"
      sha256 "d913fb0cb27bf1689f69669b025de13c08316d89d46155af5d522b5b3eaa7094"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.42.0/sovrium-0.42.0-linux-arm64.tar.gz"
      sha256 "953dcf903cf7e3d2f54d2d53ec924475216743e1ba13e246cec36709c6ecefec"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

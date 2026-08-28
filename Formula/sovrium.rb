# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.23.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.23.0/sovrium-0.23.0-darwin-x64.tar.gz"
      sha256 "15bf95486a308a7cf236ad49cd333208231f9af5ba93cd5a99e0668c1ae45ade"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.23.0/sovrium-0.23.0-darwin-arm64.tar.gz"
      sha256 "79444c85a7d7b3d15ee6f104119111b825d32733cfb5f3ce520ab5e64abf5c92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.23.0/sovrium-0.23.0-linux-x64.tar.gz"
      sha256 "eb5c41122616b8c939619e9e4ffe7ddf3c25f21a262f84839a04f9d7bfe7d390"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.23.0/sovrium-0.23.0-linux-arm64.tar.gz"
      sha256 "bf58f753dd5fcccabc413a0fab1dfa73c4c57049c8b8bcdf9d804df9afcec897"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

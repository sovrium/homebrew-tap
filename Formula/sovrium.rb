# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.40.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.40.0/sovrium-0.40.0-darwin-x64.tar.gz"
      sha256 "4fa063c9a458fc8d06a16325ce172e9a341731d54948348e9b2cca8881042cb9"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.40.0/sovrium-0.40.0-darwin-arm64.tar.gz"
      sha256 "4c18ecaba154d773722076743634d465bf5cbc3aaaf72b0921e7a36fb1d6d50d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.40.0/sovrium-0.40.0-linux-x64.tar.gz"
      sha256 "aef97472c49c2cffbc87a1b635b519c54794aa0e346be3ee5aa5acd6370ad54d"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.40.0/sovrium-0.40.0-linux-arm64.tar.gz"
      sha256 "ae03f91b49668e864c877d35d1b1f1ef1d5f418b318bc95e8643b92e59a5c3b2"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

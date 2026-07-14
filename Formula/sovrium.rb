# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.13.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.13.0/sovrium-0.13.0-darwin-x64.tar.gz"
      sha256 "7c5f678db5145c6e3376091ae7f32d6c378083dea9913b9783b22e8ec3663cca"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.13.0/sovrium-0.13.0-darwin-arm64.tar.gz"
      sha256 "044f3bc42b0daae35f7befa22135e6d9a2d603f23c1166e87d1e282d51526dbc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.13.0/sovrium-0.13.0-linux-x64.tar.gz"
      sha256 "243a9be7a62622aa592cc38d8f13e8f3a21bdef8decdd2f90b7566bdf25dba93"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.13.0/sovrium-0.13.0-linux-arm64.tar.gz"
      sha256 "90c67cd9277217b97a149392bedf7585d23efdc9ac49e50e94cab37984f381e8"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

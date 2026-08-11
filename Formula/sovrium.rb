# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.22.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.22.1/sovrium-0.22.1-darwin-x64.tar.gz"
      sha256 "6573433945bc68f1de7a621c23f0bd3f314c2ffa4684a26d6cf2a355f8c91eff"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.22.1/sovrium-0.22.1-darwin-arm64.tar.gz"
      sha256 "16c59643c2fc7991da934dab509c9b69c9bf551758403bf3731b96dbc645276c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.22.1/sovrium-0.22.1-linux-x64.tar.gz"
      sha256 "f129f0620bf1b42fbe2e319f7edab649476e1f929e93059baccefe4f0145b453"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.22.1/sovrium-0.22.1-linux-arm64.tar.gz"
      sha256 "29213dd334d3993a86a01047265ae743573d56369163e3088ac1ee55608594ce"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

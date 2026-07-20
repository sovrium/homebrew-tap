# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.16.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.16.0/sovrium-0.16.0-darwin-x64.tar.gz"
      sha256 "0dc8dbaee1fcf499ab4d9d2e5b7ad7352b81c18a947078d308564ec37bcee087"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.16.0/sovrium-0.16.0-darwin-arm64.tar.gz"
      sha256 "954889544906e55d24f49cf7f7bfa82b0936de759cc304289df05ce357c4cf32"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.16.0/sovrium-0.16.0-linux-x64.tar.gz"
      sha256 "66a9e18e482ae09c4a9d460faec294edaf2ccb621e418082393bdc1a3edefc83"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.16.0/sovrium-0.16.0-linux-arm64.tar.gz"
      sha256 "e10036ad5185412490dddf99647f686188bdea20cebf1ea494304b8cecd4c2b3"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

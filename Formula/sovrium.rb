# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.36.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.36.0/sovrium-0.36.0-darwin-x64.tar.gz"
      sha256 "e8f26f91783571132552bac5ddf0c25c97f5453b25035294f93bc686f0c82bc8"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.36.0/sovrium-0.36.0-darwin-arm64.tar.gz"
      sha256 "9d410c7eda4eebf6027aab893995bcefc9901d5dcc9ad4396d59404c4d705840"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.36.0/sovrium-0.36.0-linux-x64.tar.gz"
      sha256 "67a8fb7066ef626e5e93d48881bbff8837d1391525ce80c8ad54d9bffe1390ce"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.36.0/sovrium-0.36.0-linux-arm64.tar.gz"
      sha256 "2d148c625c9c68986ed0d432b3fca889f596fc476b9a2ecd7d375cd2f9c1799c"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

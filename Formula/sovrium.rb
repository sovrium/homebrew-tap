# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.18.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.18.1/sovrium-0.18.1-darwin-x64.tar.gz"
      sha256 "68c56f94f6a5f432917198654f2fa5ebbb5df3c3f157ddf4e09f989faf97558c"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.18.1/sovrium-0.18.1-darwin-arm64.tar.gz"
      sha256 "fc787d4d186a93e4e47f4c03265a44d625120e6bb17ffe246b8603f20643a608"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.18.1/sovrium-0.18.1-linux-x64.tar.gz"
      sha256 "ee8893ea2cec3a9a93da26b8fcc2127b75ca27f180e0043dda626ca79f3074c1"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.18.1/sovrium-0.18.1-linux-arm64.tar.gz"
      sha256 "7d9ac5d5503fb87dfd6eae2cb830a44c7e91158967fa1b1f1f685de561ae060a"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

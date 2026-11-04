# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.47.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.47.0/sovrium-0.47.0-darwin-x64.tar.gz"
      sha256 "a2565a3b4ce094566b5a0d1f2d2616c750e801827cb08d3a9f9179a996c06ab6"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.47.0/sovrium-0.47.0-darwin-arm64.tar.gz"
      sha256 "9639ccc7de0dacd218d790138f650bdb235c49a54b0bf242321a7969cd337178"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.47.0/sovrium-0.47.0-linux-x64.tar.gz"
      sha256 "870158eb2403c17384dfc56ec75d348a187b392cbc2d44b64235396d5c03a135"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.47.0/sovrium-0.47.0-linux-arm64.tar.gz"
      sha256 "3e2a3e0ab4090a791a3f08a947423e76338d274daad247d21775570d745f8431"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

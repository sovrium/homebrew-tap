# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.6.2"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.6.2/sovrium-0.6.2-darwin-x64.tar.gz"
      sha256 "e2c01b9bf5c7656e4c442ace9212dba6a5ba43cd284ff9cda4cfc6a2b157e898"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.6.2/sovrium-0.6.2-darwin-arm64.tar.gz"
      sha256 "0fc29bee8753edb0986d601a27adf645c35888e0f6d7ba03d4b0d7ea859cd7ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.6.2/sovrium-0.6.2-linux-x64.tar.gz"
      sha256 "c2f3d4e6f470238f9dfa9a300a2f3853409c7c62b456b9f8a9ed2d5c354b2033"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.6.2/sovrium-0.6.2-linux-arm64.tar.gz"
      sha256 "08fc78294aeae34d0b717f8d721d89c9724fddc0979755e1523790eb96064fca"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

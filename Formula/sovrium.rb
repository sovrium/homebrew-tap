# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.7.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.7.0/sovrium-0.7.0-darwin-x64.tar.gz"
      sha256 "a1713d17b5db0d6efa560e03cce27acbc4a0bdc1252dc036848bb7455aedd968"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.7.0/sovrium-0.7.0-darwin-arm64.tar.gz"
      sha256 "e7c620825cac7a2585366f44d5f38b9a6c15dbc1d08f908eafb0b3ffdcf79e9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.7.0/sovrium-0.7.0-linux-x64.tar.gz"
      sha256 "c718aa89c69ca26a28d693af58381cdf6f61249ea55440fa41d6525f242a1a0f"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.7.0/sovrium-0.7.0-linux-arm64.tar.gz"
      sha256 "868d3f64dbff724f9232cbbbb9ba8a4c6ac98a2f98fc4dad98aef9d961eb2b57"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

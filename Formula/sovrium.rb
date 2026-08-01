# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.21.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.21.0/sovrium-0.21.0-darwin-x64.tar.gz"
      sha256 "38352052413cb77c7500d31c03bcb3c0c58771b40e93cde80d4a9ff4baf3ab12"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.21.0/sovrium-0.21.0-darwin-arm64.tar.gz"
      sha256 "41e1ce2dcf552b5a8c10f851ea4e7fcec10b607104e44b60dbe798ef2c4a842b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.21.0/sovrium-0.21.0-linux-x64.tar.gz"
      sha256 "22bdc0c6e3d64c9a9ed4605a827eef11b7f341c076e93f399340b459874e78da"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.21.0/sovrium-0.21.0-linux-arm64.tar.gz"
      sha256 "10db15d3b89f6bbca2928f4398274a754fb96f1d5064840f602d2f2dd301257a"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

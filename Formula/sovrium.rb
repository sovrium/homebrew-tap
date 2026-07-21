# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.17.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.17.0/sovrium-0.17.0-darwin-x64.tar.gz"
      sha256 "600ff942b4646388f46be954873d033e0bf03a8d34b931229ec5da384fb91311"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.17.0/sovrium-0.17.0-darwin-arm64.tar.gz"
      sha256 "1c062186e2705426ebf04f3d37a6f4725fd8e8279bb64d09a155661fe4da1acb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.17.0/sovrium-0.17.0-linux-x64.tar.gz"
      sha256 "2aeddfe771d1dc6ef327087073f9281a643528c9ae8f2ca4884db7401cb2046e"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.17.0/sovrium-0.17.0-linux-arm64.tar.gz"
      sha256 "18e0b99343f31e650a3107e1130693f8b7049f0b10dfb77e467650e5aa7a0d7b"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.38.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.38.0/sovrium-0.38.0-darwin-x64.tar.gz"
      sha256 "dde164268ec38a1bcb61b3a4975b1980bafccec677650c9d7062701d7f2eb56a"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.38.0/sovrium-0.38.0-darwin-arm64.tar.gz"
      sha256 "d0f846a89baa3c0fd7282a0ae85e54e599baea45e9426cd98f3f526f4dda92e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.38.0/sovrium-0.38.0-linux-x64.tar.gz"
      sha256 "581b2dc3431ac2ecf64bd11630ddc639280cd2c4043382a403cb12b1fd6f5fbc"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.38.0/sovrium-0.38.0-linux-arm64.tar.gz"
      sha256 "91768900968cc38ed1ba7289b576bf6117dc3b8c9bd54c8f51ff6fddac777bc6"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

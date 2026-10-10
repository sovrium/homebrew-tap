# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.35.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.35.0/sovrium-0.35.0-darwin-x64.tar.gz"
      sha256 "532265237ace680c6f627274f90219a80854588768230a8e74893480ec71395f"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.35.0/sovrium-0.35.0-darwin-arm64.tar.gz"
      sha256 "9774bfa26aebeccbd3946a1bd3438613e4d00aae96ab9d6a96ce4ed49f372895"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.35.0/sovrium-0.35.0-linux-x64.tar.gz"
      sha256 "937256db0bd3db5f2ba2a63e19e1885a5bf182b927b774c78ff575175464020c"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.35.0/sovrium-0.35.0-linux-arm64.tar.gz"
      sha256 "d6b4c401c80c3696966fef038cc57b4adcefae3ef2f677e5a488c945bde40bae"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

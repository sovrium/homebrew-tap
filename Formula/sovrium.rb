# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.8.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.8.0/sovrium-0.8.0-darwin-x64.tar.gz"
      sha256 "8f989b2e87f45527fa445f08deb534e09cd1511e8be4ae8c693ead2cc9986bce"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.8.0/sovrium-0.8.0-darwin-arm64.tar.gz"
      sha256 "c2a909ca244423ecd45b9b08c926235f3938477b35daf5d2fe53636cd99d218d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.8.0/sovrium-0.8.0-linux-x64.tar.gz"
      sha256 "7137adbcf2384aecc1a848c0bab5e4ecc204fa10b609641938861e0e953bba79"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.8.0/sovrium-0.8.0-linux-arm64.tar.gz"
      sha256 "dd464add19da6bfc6285a0ffaa4b753bebb5a10e3c3f23db1b70aea672b7bbef"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

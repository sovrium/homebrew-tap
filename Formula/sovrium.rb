# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.43.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.43.1/sovrium-0.43.1-darwin-x64.tar.gz"
      sha256 "1633a7574c2a43ba7141f84d5e45b84c93da8d6a1ec741c9615809ffa22a4ead"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.43.1/sovrium-0.43.1-darwin-arm64.tar.gz"
      sha256 "a5f92ed7472cecb1bb945e2a33e6de992670d2af3a67dc2fda50a08c5b07e1b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.43.1/sovrium-0.43.1-linux-x64.tar.gz"
      sha256 "677d0e8ce17041b6a9f543f81c69111de7f765bc6bed03b634244145968b9508"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.43.1/sovrium-0.43.1-linux-arm64.tar.gz"
      sha256 "dffb6da9ded9ff7293a0335278cb92c6798e2a21241fd6ed167d368709a9113d"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.22.2"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.22.2/sovrium-0.22.2-darwin-x64.tar.gz"
      sha256 "cdc09b7703077f2ae5f0035b3cd6fa23a34b4eeeeae8227cf133ee3b90814ad2"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.22.2/sovrium-0.22.2-darwin-arm64.tar.gz"
      sha256 "a8a7c5d79160747bd266f84d1a3bc14a7c79ec3b9a310e76f3d3b41e99b01ad2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.22.2/sovrium-0.22.2-linux-x64.tar.gz"
      sha256 "9b60dc56cad1d8c707ac47b298be03154ab75591dd3046a0f54b76259192e7d9"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.22.2/sovrium-0.22.2-linux-arm64.tar.gz"
      sha256 "b051303f1e77c6d7d432d3f896aa9a69b11ad78f901f1608298c208d03ae1ab2"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

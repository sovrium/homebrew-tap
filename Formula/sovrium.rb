# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "1.0.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v1.0.0/sovrium-1.0.0-darwin-x64.tar.gz"
      sha256 "4b028055f01dccd111c768c655ad73ded38be12e14f59fcd59fe0993c3d7a92f"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v1.0.0/sovrium-1.0.0-darwin-arm64.tar.gz"
      sha256 "aa924bb5559c541138fed6ca03953dfed0bac834b7510418530997d868af6762"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v1.0.0/sovrium-1.0.0-linux-x64.tar.gz"
      sha256 "1a477427fe2b426857c32cfe6f70e09c1bd7f7a5a207e55b25090e582ec9bb69"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v1.0.0/sovrium-1.0.0-linux-arm64.tar.gz"
      sha256 "b277ce6567ed2e415f09c1e22d1e316f9da0da0e0cdd4d5363efd75757967504"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

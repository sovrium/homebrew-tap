# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.7.2"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.7.2/sovrium-0.7.2-darwin-x64.tar.gz"
      sha256 "81bfdcc7390e23f4c987d21da81da47b03588a522a94903256e38418fda7b3ef"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.7.2/sovrium-0.7.2-darwin-arm64.tar.gz"
      sha256 "f17c6d97467e8cde34fe4beef453174838e6aa11bb4900f309f9699930587a02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.7.2/sovrium-0.7.2-linux-x64.tar.gz"
      sha256 "8f04526887f78abcac1a9d529d43b1840b50856880744e18209b1399e31068bc"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.7.2/sovrium-0.7.2-linux-arm64.tar.gz"
      sha256 "fe2d86d297b937403416d884922f91d4c28a8753a50e626055d32c7aca7e603a"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

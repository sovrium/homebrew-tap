# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.15.2"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.2/sovrium-0.15.2-darwin-x64.tar.gz"
      sha256 "e0775e1d48fb66930e6c4452206c7fd39f196ac3ac49ff7e296bca9c7de2343f"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.2/sovrium-0.15.2-darwin-arm64.tar.gz"
      sha256 "8ca8fccdda2f5aaf9d45878cb837492d1423731d9199e3874a1a234b7640fa99"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.2/sovrium-0.15.2-linux-x64.tar.gz"
      sha256 "7ebcb8b767dc593f54b6d4f4a79051ebd3ca549063c7e26786da921490648072"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.2/sovrium-0.15.2-linux-arm64.tar.gz"
      sha256 "e83de7af8abfba05c0f666464172464e8499433baf5511369269c7e3397d18b9"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

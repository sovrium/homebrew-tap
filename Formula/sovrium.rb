# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.46.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.46.1/sovrium-0.46.1-darwin-x64.tar.gz"
      sha256 "f8ab9aac513680dbcaa6f826e15f4921d2a936ca42bd261eec42fbcd09352a35"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.46.1/sovrium-0.46.1-darwin-arm64.tar.gz"
      sha256 "5514507cc2fdc2c7997d364cc273f20368f7e2f7b1702eabf7e00b00e6ae6afd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.46.1/sovrium-0.46.1-linux-x64.tar.gz"
      sha256 "9c7bb20bc31c358a68faed1216dd1d618bf41735e1fca1d6efa6ec9f7d1737dd"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.46.1/sovrium-0.46.1-linux-arm64.tar.gz"
      sha256 "1082a50b60d72d6d5457ece2b9d8a1a7afea253ce72863c9beb56b88003c114c"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

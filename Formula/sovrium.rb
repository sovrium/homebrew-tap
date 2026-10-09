# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.34.2"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.2/sovrium-0.34.2-darwin-x64.tar.gz"
      sha256 "41c3a3d03b1d891a3e27e9b02ed691decc140a5634a329aaad91e00f7fa4f1c6"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.2/sovrium-0.34.2-darwin-arm64.tar.gz"
      sha256 "78132406c9540ca2087fe16fbc07d0c3cf7f3c356acaf391563c36c0f4685274"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.2/sovrium-0.34.2-linux-x64.tar.gz"
      sha256 "e2f558d04639a3c7f4bdc489393637181d5233ec6e60a227ab5b029ae67e44f6"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.2/sovrium-0.34.2-linux-arm64.tar.gz"
      sha256 "c993b83332281f5b034f1837c0fa96014309fb145885bc4ccf00935395b85f3c"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

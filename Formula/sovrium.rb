# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.34.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.1/sovrium-0.34.1-darwin-x64.tar.gz"
      sha256 "d2a6fe25ee75a71eccf650e02b35638d341a61b9e3ad3b09fc3fd56f2f3c896d"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.1/sovrium-0.34.1-darwin-arm64.tar.gz"
      sha256 "e37cb83f0237f77a43cc462bd54630c8dd0ecbc1b37b4ef250d0ac8dfdff4ff4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.1/sovrium-0.34.1-linux-x64.tar.gz"
      sha256 "7bfb28a9cdf372a477a0c910ca36ea3b764fc68986fc0b4a610636ed971958f8"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.34.1/sovrium-0.34.1-linux-arm64.tar.gz"
      sha256 "9f902972c7742b145fef342ee0d082b3a551ea4f156478cce0c1173d8f9f1395"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

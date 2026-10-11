# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.37.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.37.0/sovrium-0.37.0-darwin-x64.tar.gz"
      sha256 "38223087211508d1f89cf1be1c08393dae49e455a0498929160471c4fda4f236"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.37.0/sovrium-0.37.0-darwin-arm64.tar.gz"
      sha256 "4afa539834a3610d3924c18f18c836eba1c9bf1ae99eea2df28e9a6831fbce67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.37.0/sovrium-0.37.0-linux-x64.tar.gz"
      sha256 "925a38b8dd9e37ecc2fe161576b37c2de388914d5d99bd4540a3f5cafa261a70"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.37.0/sovrium-0.37.0-linux-arm64.tar.gz"
      sha256 "44f3cc971ab27a223f9a0405b00f7b2f000ddcd88f75b1f08e7f2d869da84d48"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

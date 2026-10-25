# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.44.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.44.0/sovrium-0.44.0-darwin-x64.tar.gz"
      sha256 "e4afdd07f9804a70ac2a5a10635c5dd20471a40b5afd95cd0a724f2bb089674e"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.44.0/sovrium-0.44.0-darwin-arm64.tar.gz"
      sha256 "aea1a6300bfc2b18b13c713ca85b1e7e5c3c997272dbedba198a5220dd3da921"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.44.0/sovrium-0.44.0-linux-x64.tar.gz"
      sha256 "b6c4c74f1c516d66c78b472f314a7a4cb99b260b43c38b32f6656c2d36b4e214"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.44.0/sovrium-0.44.0-linux-arm64.tar.gz"
      sha256 "885d37ba9f8fcf13454e32fdda65e4d28414cf020610bd59cbe2d42ce8099fb3"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

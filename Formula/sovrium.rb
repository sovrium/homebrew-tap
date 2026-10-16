# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.39.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.39.1/sovrium-0.39.1-darwin-x64.tar.gz"
      sha256 "0683f89001fc3088ef63b608120fac87752b1cc9da8c7cd7b3ef262b8baca2f8"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.39.1/sovrium-0.39.1-darwin-arm64.tar.gz"
      sha256 "73018c9a9fe9c3fffa91e06449ef80f2b2cf3c504adb2181225e2629f410eb9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.39.1/sovrium-0.39.1-linux-x64.tar.gz"
      sha256 "988ca16c9a70d66438de3a1247872fed1cbcd98cfa878bff71827930ba630825"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.39.1/sovrium-0.39.1-linux-arm64.tar.gz"
      sha256 "61f4f69264c21503d3191deebf44dca4576c09e0da6441e264304dcdf971f6e6"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

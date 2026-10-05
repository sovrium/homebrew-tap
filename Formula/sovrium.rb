# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.30.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.30.0/sovrium-0.30.0-darwin-x64.tar.gz"
      sha256 "83799d6da5b6c41df99c4c6feb5c6c2ab6d68065f309e7cb5aaa5fb198cfa662"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.30.0/sovrium-0.30.0-darwin-arm64.tar.gz"
      sha256 "c58e95604085bf4aae29e9acdb6a896bb03a1aa9f0336012dba716806da0f24b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.30.0/sovrium-0.30.0-linux-x64.tar.gz"
      sha256 "2ad57de681eedc985f8ea6be3bc69332e473eb728ed82a3774028d54769f08e5"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.30.0/sovrium-0.30.0-linux-arm64.tar.gz"
      sha256 "1fd815c1f26b2a0cdec3ea700ec1bad70157393d61046cb2e43f3f0a5e952f66"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

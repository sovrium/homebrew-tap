# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.31.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.31.0/sovrium-0.31.0-darwin-x64.tar.gz"
      sha256 "5dfa1af64f527a9d3187f5308466ac277e2fbd3a640837220e83af2c3aa15a58"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.31.0/sovrium-0.31.0-darwin-arm64.tar.gz"
      sha256 "3afad08a85bb6943fb18e916c3106fe065528dd3bb85fc075fc1c1c556853cc3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.31.0/sovrium-0.31.0-linux-x64.tar.gz"
      sha256 "13cf7d209c2c1cf6557094750edf0a0756e2bb1609ce0520af7f5092e0f20c57"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.31.0/sovrium-0.31.0-linux-arm64.tar.gz"
      sha256 "8cf2b89f5ec1554e586a7a49ff2144c0fe6b810bb4ec3da997c62be5e615912f"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

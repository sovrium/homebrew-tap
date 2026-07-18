# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.15.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.0/sovrium-0.15.0-darwin-x64.tar.gz"
      sha256 "22ba548d072311c14703da9b5f1120ad26367b7fd7068d4731bbae7505ebd507"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.0/sovrium-0.15.0-darwin-arm64.tar.gz"
      sha256 "28da1c1452868e4f8009413485511208ee71f3fba7591a30b296540887d7a30a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.0/sovrium-0.15.0-linux-x64.tar.gz"
      sha256 "479bf7596661b75e5d010ce53bf0de6f6cc79464f0583f4c61b79315837604b8"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.0/sovrium-0.15.0-linux-arm64.tar.gz"
      sha256 "1393d7b9adf8f6d39623ca44c6b71e9f6f535f784cd47d94f25b23cdd1670515"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

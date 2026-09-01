# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.24.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.24.0/sovrium-0.24.0-darwin-x64.tar.gz"
      sha256 "3b0503b7d03804d7ceb26f988e95f22bdce2a3f25247bf5ab8f521a09d7df7b8"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.24.0/sovrium-0.24.0-darwin-arm64.tar.gz"
      sha256 "a146a88b791a34f0d0ab83fbde0a16e393fbf3adbe666d50874955aefbc082c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.24.0/sovrium-0.24.0-linux-x64.tar.gz"
      sha256 "2e6fb7a42345552160e6b0e57f5a61a347a0f96ec4f26e49a6593765e14dcf1b"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.24.0/sovrium-0.24.0-linux-arm64.tar.gz"
      sha256 "9a07f86fdef361d88c480aca84b408abdf85b8db7a025b00cdd73f8068f5c1ee"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

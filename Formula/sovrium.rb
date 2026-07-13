# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.12.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.12.1/sovrium-0.12.1-darwin-x64.tar.gz"
      sha256 "4ab93719c5fbdf155e75a036c6bb3349a4f228658a8ee594e8378ada4a4091b4"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.12.1/sovrium-0.12.1-darwin-arm64.tar.gz"
      sha256 "a4bc9e3990933d3a9cfb249a2ff6055e35d8c6402ef26fb59dc37b9ed76f7b8f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.12.1/sovrium-0.12.1-linux-x64.tar.gz"
      sha256 "0f498a07b2460a945fdaa03bd8755c547a57475edafc51e4655c30095915fcb6"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.12.1/sovrium-0.12.1-linux-arm64.tar.gz"
      sha256 "2b6d51ea6d0146cfad311165588a5898becef16fe9c398e9519ca7f0fa51884b"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

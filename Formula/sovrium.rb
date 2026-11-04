# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.47.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.47.1/sovrium-0.47.1-darwin-x64.tar.gz"
      sha256 "334f4ed44561e06c1f930312612a60893de9df510797e6a3a28107b0daedc25e"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.47.1/sovrium-0.47.1-darwin-arm64.tar.gz"
      sha256 "7abc784542c0e6dc49d83a385dae7a16424903958880a9fd2a39bec4938e93f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.47.1/sovrium-0.47.1-linux-x64.tar.gz"
      sha256 "8dc56db5787ef6a5a822a7e9c1a97e47bd4225afba37a106734bb3d1cd170f9f"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.47.1/sovrium-0.47.1-linux-arm64.tar.gz"
      sha256 "956d733b94cd8c15da4936fa28ad9af61f1d8eabdcd4ff25ce8491fc4669e753"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

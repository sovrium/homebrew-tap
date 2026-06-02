# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.10.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.10.0/sovrium-0.10.0-darwin-x64.tar.gz"
      sha256 "ac94a394d8e516eabb4fdba445ee33007e8e8f96e082a0fc627c197554dd3573"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.10.0/sovrium-0.10.0-darwin-arm64.tar.gz"
      sha256 "e4c922489f595d55810c5a47f31b64625de61ca44ed24b9349bde0ee2016d836"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.10.0/sovrium-0.10.0-linux-x64.tar.gz"
      sha256 "9f469d00f0c74a9fbff4f65f4ae21c061dbe124ff215c430d05d79f7c2440609"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.10.0/sovrium-0.10.0-linux-arm64.tar.gz"
      sha256 "b3a0e670e02df97ea94f319d1796ba90e5bffd90b53a97b53dbcd98a6e63a3f0"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

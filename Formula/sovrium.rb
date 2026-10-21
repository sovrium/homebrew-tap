# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.41.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.41.0/sovrium-0.41.0-darwin-x64.tar.gz"
      sha256 "c4e3cec6bd0949fb05e155a9558bda114a5ac8c8c73a729844faac524ec434f4"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.41.0/sovrium-0.41.0-darwin-arm64.tar.gz"
      sha256 "f3a92d59058c65d2cddc98a68793733d800cff36255eb50f4813c78ac349cacd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.41.0/sovrium-0.41.0-linux-x64.tar.gz"
      sha256 "c933b3e014faa66d686ebf01c6eee3732842a10678f7159b62ec021a738cf424"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.41.0/sovrium-0.41.0-linux-arm64.tar.gz"
      sha256 "925fb5f3ec0d6ed7580beeb656d3fd54bc0cff7a3070aa3d3f15c75e2951d955"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

# Homebrew formula for Sovrium
# Auto-updated by scripts/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.5.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.1/sovrium-0.5.1-darwin-x64.tar.gz"
      sha256 "51da34790f169cbec66178f9a2568804c3b4fd150cae0c5ea9c8c7c09bed8f0b"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.1/sovrium-0.5.1-darwin-arm64.tar.gz"
      sha256 "9d94c514b3e344a675efc6ff5ad81cb33fbfa2d90298de0758366957af558afc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.1/sovrium-0.5.1-linux-x64.tar.gz"
      sha256 "b3e7834ca5fa9d65e6a9005f3f969d64cd51a80892a1153f588aec6f37470e75"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.5.1/sovrium-0.5.1-linux-arm64.tar.gz"
      sha256 "951b0f8df3bf5cf620ed89131e4b4f7927c1abaf5baef1edc05bfc44833e78fe"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.33.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.33.0/sovrium-0.33.0-darwin-x64.tar.gz"
      sha256 "ef3aa23bf3925480cc1a455957be60cce48b9a7b141444b87b07501944811ab5"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.33.0/sovrium-0.33.0-darwin-arm64.tar.gz"
      sha256 "6a82c02df9b5f7800f088973284e3b82dd7f17790243b4380bb3ebf70242ee53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.33.0/sovrium-0.33.0-linux-x64.tar.gz"
      sha256 "b987ce4afc09be27115e6985ec99e5fa7da790b8b91776863c2f1ec4878162dc"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.33.0/sovrium-0.33.0-linux-arm64.tar.gz"
      sha256 "e6c60d1f89df2c29b63aaf5375bd96560be3fe201905cad9f1c767f71a86254b"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

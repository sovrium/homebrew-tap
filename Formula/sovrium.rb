# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.8.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.8.1/sovrium-0.8.1-darwin-x64.tar.gz"
      sha256 "db9ad36c0310a3df35cee484b373ce59030aa49bd8abcf537cd5c344a3d75d99"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.8.1/sovrium-0.8.1-darwin-arm64.tar.gz"
      sha256 "a707eb7db882491c82d584af74067b8bd0270b2e90efb40df0a3452f80a7ad60"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.8.1/sovrium-0.8.1-linux-x64.tar.gz"
      sha256 "95176048f9fa064831bceddfe7ee68c648dc09f960d8c935ac98c2f89b43960c"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.8.1/sovrium-0.8.1-linux-arm64.tar.gz"
      sha256 "16c032ae86f8877b03bd4a977d94ea497baed2003ffebf12db044059827dead5"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

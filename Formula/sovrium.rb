# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.19.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.19.0/sovrium-0.19.0-darwin-x64.tar.gz"
      sha256 "ee95999c5ebd87229b3f069527a5863541d253114c04cb4b352eb9d26868069a"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.19.0/sovrium-0.19.0-darwin-arm64.tar.gz"
      sha256 "16a7295847895ae9c481f29a58ab9efeca76e0b6c12ac7b3e0177b1aa66350cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.19.0/sovrium-0.19.0-linux-x64.tar.gz"
      sha256 "86328a5089052adb1fd68fd0c0fb3b60c62adbe389b3f2c804f7086238a24679"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.19.0/sovrium-0.19.0-linux-arm64.tar.gz"
      sha256 "4cfe9c0aa59605bbcdfb8352799f96f27fffd691e4bd5315721a730e0c19ccca"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

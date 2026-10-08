# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.32.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.32.0/sovrium-0.32.0-darwin-x64.tar.gz"
      sha256 "1b246533e403d88427ae0f4f0f49002e47e20e1bb019bc8738dcd0651039c72a"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.32.0/sovrium-0.32.0-darwin-arm64.tar.gz"
      sha256 "957eae203f7bf78ecf617015cbdfef39f7a9fa4ce75f72662853fb66f0bc9f7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.32.0/sovrium-0.32.0-linux-x64.tar.gz"
      sha256 "66d9ea278bcd8131f2f69fd32eefdfaf32f4bbbbc5c7b75aa31c146a5127a448"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.32.0/sovrium-0.32.0-linux-arm64.tar.gz"
      sha256 "c0e2205de1a674c34d7ec09ab13e8d4920e9b321ea1fc9ad4d90f350e99dcf42"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

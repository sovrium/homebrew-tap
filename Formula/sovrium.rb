# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.25.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.25.0/sovrium-0.25.0-darwin-x64.tar.gz"
      sha256 "aa91507d1bb1cda1743a98f54c9f2bfa46805190380078022761d2a244123fec"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.25.0/sovrium-0.25.0-darwin-arm64.tar.gz"
      sha256 "ab8c451aff2935b24fc140c136ae4048ef7203caa6db8e49c08b2146b362aaab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.25.0/sovrium-0.25.0-linux-x64.tar.gz"
      sha256 "31350527ae551a5fac0697c0e09c05b984103cf2d5e550c9a6f4409141cac361"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.25.0/sovrium-0.25.0-linux-arm64.tar.gz"
      sha256 "fdf82a13d56a5da5bbb4940c6d3b6b144aebaeb69d58530c551fe14f74707025"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

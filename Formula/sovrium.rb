# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.29.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.29.0/sovrium-0.29.0-darwin-x64.tar.gz"
      sha256 "710f7019afb29f483f8796419049e164dee01ed3cc49ed24bb16945f3bf96d71"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.29.0/sovrium-0.29.0-darwin-arm64.tar.gz"
      sha256 "b14cb2738e427168486fae0a7f7cea87b3ce85077a80c7d99a9cb541c8df53f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.29.0/sovrium-0.29.0-linux-x64.tar.gz"
      sha256 "b0d7b9efca3359f9f538babe42f75733fef6b928461bfde3ca2fd9d720ef12ff"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.29.0/sovrium-0.29.0-linux-arm64.tar.gz"
      sha256 "d3b000cdd856eccf7898d0872ea26734047dd92fa29043139a2056ee5f27794b"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

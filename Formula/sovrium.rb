# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.43.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.43.0/sovrium-0.43.0-darwin-x64.tar.gz"
      sha256 "f4b43c2a4d6cb8acdd0993ee9b41041acbecec4b5dc3810ce9169a0af5402712"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.43.0/sovrium-0.43.0-darwin-arm64.tar.gz"
      sha256 "8cef29ef76493f935bda5cac160df0983bb80347a0aa4298f082b4f577e7a0cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.43.0/sovrium-0.43.0-linux-x64.tar.gz"
      sha256 "6cb6d567e7741ef91c758a68cd4554b83aa6b576342231a5ae42ab5140a8b478"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.43.0/sovrium-0.43.0-linux-arm64.tar.gz"
      sha256 "19bde014aa55658444988dfb98227bf206da95c57fe0887f7b20f115a1c7d6af"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

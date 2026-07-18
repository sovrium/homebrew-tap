# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.15.1"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.1/sovrium-0.15.1-darwin-x64.tar.gz"
      sha256 "1a6949d554c70b6796c11d5fb284e5e335a4d0adf81a75ede424399fa58159e2"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.1/sovrium-0.15.1-darwin-arm64.tar.gz"
      sha256 "13fc73e8dcee0a7d27bda045dfb28a72272abd197b9e74d5de30ec039e3164d0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.1/sovrium-0.15.1-linux-x64.tar.gz"
      sha256 "91719fe36b3c88b9915f9130ef1725f76fffbb11831179049a72ef8aa8419540"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.15.1/sovrium-0.15.1-linux-arm64.tar.gz"
      sha256 "79989c1474c6a236d4264ad1288e9187cbd03e65eb0e58780c44df4d2167c3aa"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

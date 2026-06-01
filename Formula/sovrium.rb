# Homebrew formula for Sovrium
# Auto-updated by scripts/build/update-homebrew-formula.ts
#
# Install: brew install sovrium/tap/sovrium
# Upgrade: brew upgrade sovrium/tap/sovrium

class Sovrium < Formula
  desc "Configuration-driven web application platform"
  homepage "https://sovrium.com"
  version "0.9.0"
  license "BUSL-1.1"

  on_macos do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.9.0/sovrium-0.9.0-darwin-x64.tar.gz"
      sha256 "5a3d2568059068792da943643c1d655a03ea8ced9337d183297085604627b51e"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.9.0/sovrium-0.9.0-darwin-arm64.tar.gz"
      sha256 "fe7c314e005605dbb3f947396a364bae6a42f2b5fca0f7f905490036607cd05d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sovrium/sovrium/releases/download/v0.9.0/sovrium-0.9.0-linux-x64.tar.gz"
      sha256 "ae29ba4cbf84470f3222f5b3e33e42c3abd86df4020a0a9d28593fd0ed02e795"
    end
    on_arm do
      url "https://github.com/sovrium/sovrium/releases/download/v0.9.0/sovrium-0.9.0-linux-arm64.tar.gz"
      sha256 "443f27d674889c6c00a2b0c349972363b1f3283bbb947b55a6330acdc9742def"
    end
  end

  def install
    bin.install "sovrium"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sovrium --version").strip
  end
end

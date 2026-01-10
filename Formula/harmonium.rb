# Homebrew Formula for Harmonium CLI
# This file should be placed in bascanada/homebrew-tap/Formula/harmonium.rb

class Harmonium < Formula
  desc "AI-powered procedural music generator CLI"
  homepage "https://github.com/bascanada/harmonium"
  url "https://github.com/bascanada/harmonium/releases/download/v0.0.12/harmonium-cli-macos-universal.tar.gz"
  sha256 "bfa53bab7e4a9af92f2078b3a224b46c173f3eff179bfae69bce78895740aa5b"
  license "MIT"
  version "0.0.12"

  def install
    bin.install "harmonium"
  end

  test do
    system "#{bin}/harmonium", "--version"
  end
end

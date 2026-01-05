# Homebrew Formula for Harmonium CLI
# This file should be placed in bascanada/homebrew-tap/Formula/harmonium.rb

class Harmonium < Formula
  desc "AI-powered procedural music generator CLI"
  homepage "https://github.com/bascanada/harmonium"
  url "https://github.com/bascanada/harmonium/releases/download/v0.0.5/harmonium-cli-macos-universal.tar.gz"
  sha256 "e507782698b7fa63072ad5d63a07b8c5cdec0e3de1e9e61a45c4c21d54b7ee9c"
  license "MIT"
  version "0.0.5"

  def install
    bin.install "harmonium"
  end

  test do
    system "#{bin}/harmonium", "--version"
  end
end

# Homebrew Formula for Harmonium CLI
# This file should be placed in bascanada/homebrew-tap/Formula/harmonium.rb

class Harmonium < Formula
  desc "AI-powered procedural music generator CLI"
  homepage "https://github.com/bascanada/harmonium"
  url "https://github.com/bascanada/harmonium/releases/download/v0.0.3/harmonium-cli-macos-universal.tar.gz"
  sha256 "365a4ff22f9ac8871fbf673088507ca3112a7177f1082526345f944c68473409"
  license "MIT"
  version "0.0.3"

  def install
    bin.install "harmonium"
  end

  test do
    system "#{bin}/harmonium", "--version"
  end
end

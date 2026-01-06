# Homebrew Formula for Harmonium CLI
# This file should be placed in bascanada/homebrew-tap/Formula/harmonium.rb

class Harmonium < Formula
  desc "AI-powered procedural music generator CLI"
  homepage "https://github.com/bascanada/harmonium"
  url "https://github.com/bascanada/harmonium/releases/download/v0.0.7/harmonium-cli-macos-universal.tar.gz"
  sha256 "bd216c3b60c7cf0f34903cfa6d5d90f05686447f971adb97905073fd9a10da4e"
  license "MIT"
  version "0.0.7"

  def install
    bin.install "harmonium"
  end

  test do
    system "#{bin}/harmonium", "--version"
  end
end

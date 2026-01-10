cask "harmonium-plugins" do
  version "0.0.12"
  sha256 "b27fff203d1dc55176901d66cb39cc32a964f66d7ee73f348debea3419046a79"

  url "https://github.com/bascanada/harmonium/releases/download/v#{version}/harmonium-plugins-macos-universal.zip"
  name "Harmonium Plugins"
  desc "AI-powered generative music VST3/CLAP plugins"
  homepage "https://github.com/bascanada/harmonium"

  artifact "harmonium.vst3", target: "~/Library/Audio/Plug-Ins/VST3/harmonium.vst3"
  artifact "harmonium.clap", target: "~/Library/Audio/Plug-Ins/CLAP/harmonium.clap"

  # Remove quarantine to bypass Gatekeeper for unsigned plugins
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{Dir.home}/Library/Audio/Plug-Ins/VST3/harmonium.vst3"]
    system_command "/usr/bin/xattr", args: ["-cr", "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/harmonium.clap"]
  end

  uninstall delete: [
    "~/Library/Audio/Plug-Ins/VST3/harmonium.vst3",
    "~/Library/Audio/Plug-Ins/CLAP/harmonium.clap",
  ]

  caveats <<~EOS
    Restart your DAW to detect the new plugins.

    The plugins will be installed to:
      ~/Library/Audio/Plug-Ins/VST3/harmonium.vst3
      ~/Library/Audio/Plug-Ins/CLAP/harmonium.clap
  EOS
end

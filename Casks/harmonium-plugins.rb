cask "harmonium-plugins" do
  version "0.0.3"
  sha256 "c5d0accda50927b14ffce01be000bd1359b93a721242416eead212f22150fbe1"

  url "https://github.com/bascanada/harmonium/releases/download/#{version}/harmonium-plugins-macos-universal.zip"
  name "Harmonium Plugins"
  desc "AI-powered generative music VST3/CLAP plugins"
  homepage "https://github.com/bascanada/harmonium"

  artifact "harmonium.vst3", target: "~/Library/Audio/Plug-Ins/VST3/harmonium.vst3"
  artifact "harmonium.clap", target: "~/Library/Audio/Plug-Ins/CLAP/harmonium.clap"

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

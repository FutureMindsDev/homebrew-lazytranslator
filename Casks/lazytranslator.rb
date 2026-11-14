cask "lazytranslator" do
  version "1.1.2"
  sha256 "17214f6c3b1bc666dc30c33df006dab5805d3c135b94e82970ac7fbc04c876fd"

  url "https://github.com/FutureMindsDev/homebrew-lazytranslator/releases/download/v#{version}/LazyTranslator-v#{version}-macos-arm64.dmg",
      verified: "github.com/FutureMindsDev/homebrew-lazytranslator/"
  name "LazyTranslator"
  desc "100% Local, Studio-Grade Multilingual Translation & Transcription"
  homepage "https://lazytranslator.app"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "LazyTranslator.app"

  zap trash: [
    "~/.local/share/lazytranslator",
    "~/Library/Application Support/com.lazytranslator.app",
    "~/Library/Application Support/LazyTranslator",
    "~/Library/Preferences/com.lazytranslator.app.plist",
    "~/Library/Saved Application State/com.lazytranslator.app.savedState",
  ]
end

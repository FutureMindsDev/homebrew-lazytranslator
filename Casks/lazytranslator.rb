cask "lazytranslator" do
  version "1.1.0"
  sha256 "a55e5f6fa56bbf84d166c4d187e7a1d1daa2c0e3e4b29d931800590698f25bff"

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

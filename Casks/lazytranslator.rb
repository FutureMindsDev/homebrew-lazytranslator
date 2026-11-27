cask "lazytranslator" do
  version "1.4.0"
  sha256 "a1d16794c8bf1440bc443fd0cc14afa87e6e71f0fbc24f61aa3e1a167c5b4906"

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

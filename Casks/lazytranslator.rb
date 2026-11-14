cask "lazytranslator" do
  version "1.1.3"
  sha256 "a9421bb7d57e4383cc1007f6c20e60227157109fd363500cdee9bbccc0450c64"

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

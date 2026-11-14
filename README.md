# LazyTranslator — macOS Releases & Homebrew Tap

**LazyTranslator** is a 100% local, privacy-first native macOS desktop app for studio-grade document translation, audio/video transcription, subtitle generation, and PDF/image OCR across 21 languages (including first-class Burmese `မြန်မာ` and CJK support)—powered by unified multilingual AI models tuned for **8 GB – 16 GB RAM** Macs with Apple Metal GPU acceleration.

> All document, OCR, transcription, and translation inference runs **100% locally on your Mac**. No files, transcripts, or translations ever leave your machine.

---

## Option 1: Direct `.dmg` Download (Recommended for Most Users)

1. Download the latest **`LazyTranslator-v*-macos-arm64.dmg`** from [GitHub Releases](https://github.com/FutureMindsDev/homebrew-lazytranslator/releases/latest).
2. Double-click the downloaded `.dmg` file to open it.
3. Drag **`LazyTranslator.app`** into the **`Applications`** folder shortcut.
4. Launch **LazyTranslator** from **Applications** or Spotlight.

> **Gatekeeper Note (First Launch):** Until Apple Developer notarization is enabled, macOS Gatekeeper may display *"LazyTranslator is damaged and can't be opened"* or *"unidentified developer"* on first launch. To clear the quarantine flag safely, run:
> ```bash
> xattr -dr com.apple.quarantine /Applications/LazyTranslator.app
> ```
> Or open **System Settings → Privacy & Security** and click **Open Anyway**.

---

## Option 2: Install via Homebrew

Install directly from this tap:

```bash
brew install --cask FutureMindsDev/lazytranslator/lazytranslator
```

Or pass `--no-quarantine` until Apple notarization is enabled:

```bash
brew install --cask --no-quarantine FutureMindsDev/lazytranslator/lazytranslator
```

*(If you installed without `--no-quarantine` and macOS blocks the first launch, run `xattr -dr com.apple.quarantine /Applications/LazyTranslator.app`.)*

---

## Updating LazyTranslator

LazyTranslator **never** checks for updates in the background. You are always in control:

- **In-App 1-Click Update (Recommended):**
  1. Open **LazyTranslator** and click **🔄 Check for Updates** in the sidebar.
  2. If a newer version is available, click **Download & Install Update**.
  3. Once the SHA-256 checksum is verified, click **Install & Restart**. LazyTranslator automatically swaps the app bundle and relaunches—your downloaded AI models, glossary, and session history are preserved.
- **Via Homebrew:**
  ```bash
  brew upgrade --cask lazytranslator
  ```

---

## System Requirements & Local Storage

- **OS:** macOS 13.0 (Ventura) or newer
- **Architecture:** Apple Silicon (`arm64` — M1, M2, M3, M4 series)
- **Memory:** 8 GB RAM minimum (`Fast` tier) · 16 GB RAM recommended (`Balanced` / `Best` tiers)
- **Local Storage:** Downloaded AI model weights, glossary terms, and session history are stored locally in:
  ```
  ~/Library/Application Support/com.lazytranslator.app/
  ```
  Depending on your chosen model tier, plan for **1 GB – 8 GB** of free disk space for cached models.

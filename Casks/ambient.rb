cask "ambient" do
  version "0.2.0"
  sha256 "6256ffbdf94e4b9226f70c3768945779b6099d6addf711e932631cfe72f2c1e0"

  url "https://github.com/Jada-Q/ambient-art-pack/releases/download/v#{version}/Ambient.app.zip"
  name "Ambient"
  desc "Ambient art pack — desktop wallpaper menu bar app (5 pieces, city picker)"
  homepage "https://github.com/Jada-Q/ambient-art-pack"

  app "Ambient.app"

  uninstall quit: "net.jada.ambient"

  zap trash: [
    "~/Library/Preferences/net.jada.ambient.plist",
    "~/Library/Application Support/Ambient",
  ]

  caveats <<~EOS
    Ambient is ad-hoc signed (not Apple-notarized). macOS 15 Sequoia blocks
    first launch.

    To open the first time:
      1. Double-click Ambient.app → macOS shows "Apple could not verify…"
      2. Click "Done" (NOT "Move to Trash")
      3. System Settings → Privacy & Security → scroll to Security section
      4. Click "Open Anyway" next to Ambient → enter password
      5. Double-click Ambient.app → opens normally

    Or via Terminal (faster):
      xattr -dr com.apple.quarantine /Applications/Ambient.app
      open -a Ambient

    After first launch:
      Menu bar 🌊 → pick piece + city → desktop becomes ambient art.
      Ambient stays running in the background; quit via menu bar → Quit.

    For idle-triggered screensaver (instead of always-on wallpaper):
      brew install --cask Jada-Q/ambient-art-pack/ambient-art-screensaver
  EOS
end

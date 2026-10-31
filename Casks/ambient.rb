cask "ambient" do
  version "0.3.1"
  sha256 "ed48d6f65438ed0236857bfc993c14d465cf68f2f0cfa0a5b0c31e3582bc48b9"

  url "https://github.com/Jada-Q/ambient-art-pack/releases/download/v#{version}/Ambient.app.zip"
  name "Ambient"
  desc "Desktop wallpaper menu bar app with six real-time art pieces and city picker"
  homepage "https://github.com/Jada-Q/ambient-art-pack"

  depends_on :macos

  app "Ambient.app"

  uninstall quit: "net.jada.ambient"

  zap trash: [
    "~/Library/Application Support/Ambient",
    "~/Library/Preferences/net.jada.ambient.plist",
  ]

  caveats <<~EOS
    Tap trust (one-time, both casks in this tap)
      Current Homebrew will not load casks from a third-party tap until the tap
      is trusted. If the install stopped with "Refusing to load cask … from
      untrusted tap", run:

        brew trust jada-q/ambient-art-pack

      Trusting the tap covers every cask in it, so this is a one-time step.
      Reverse it with: brew untrust jada-q/ambient-art-pack

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

cask "ambient-art-screensaver" do
  version "0.1.0"
  sha256 "ef3b9a2741f13c4a9996471acd4fbc7290c3507c253cc9a5a2ffd736c3e7e933"

  url "https://github.com/Jada-Q/ambient-art-pack/releases/download/v#{version}/ambient-art-screensaver-#{version}.pkg"
  name "Ambient Art Pack Screensaver"
  desc "Five ambient art pieces as a Mac screensaver (WebView Screensaver + remote URL list)"
  homepage "https://github.com/Jada-Q/ambient-art-pack"

  pkg "ambient-art-screensaver-#{version}.pkg"

  uninstall pkgutil: "net.jada.ambient-art-screensaver",
            delete:  "/Library/Screen Savers/WebViewScreenSaver.saver"

  zap trash: "~/Library/Preferences/ByHost/net.liquidx.WebViewScreenSaver.*.plist"

  caveats <<~EOS
    To activate:
      System Settings → Screen Saver → select "WebViewScreenSaver"

    The screensaver fetches its live list from:
      https://ambient-art-pack.vercel.app/list.json

    Updates to the pieces propagate automatically — no re-install needed.
  EOS
end

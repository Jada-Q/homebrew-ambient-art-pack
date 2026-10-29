# homebrew-ambient-art-pack

Homebrew tap for [Ambient Art Pack](https://github.com/Jada-Q/ambient-art-pack).

## Install

```bash
brew tap Jada-Q/ambient-art-pack
brew trust jada-q/ambient-art-pack
brew install --cask ambient-art-screensaver   # or: --cask ambient (wallpaper app)
```

Current Homebrew refuses to load casks from third-party taps until they are
trusted, so skipping `brew trust` stops the install with `Refusing to load cask …
from untrusted tap`. (Verified on Homebrew 7.0.9.) One call covers both casks in this tap; reverse it with
`brew untrust jada-q/ambient-art-pack`.

Then **System Settings → Screen Saver** → select **WebViewScreenSaver**.

## Uninstall

```bash
brew uninstall --cask ambient-art-screensaver
brew untrust jada-q/ambient-art-pack
brew untap Jada-Q/ambient-art-pack
```

## See also

Main repo: <https://github.com/Jada-Q/ambient-art-pack>

# thiagobrez/homebrew-tap

Homebrew tap for [Signal](https://github.com/thiagobrez/Signal) — a macOS app
for focusing on three things a day.

## Install

```sh
brew install thiagobrez/tap/signal
```

The cask installs the same Developer ID–signed, notarized DMG that is attached
to each [GitHub Release](https://github.com/thiagobrez/Signal/releases). It is
updated automatically by Signal's release workflow
([`release-build.yml`](https://github.com/thiagobrez/Signal/blob/master/.github/workflows/release-build.yml)),
from the template in
[`scripts/update-homebrew-cask.sh`](https://github.com/thiagobrez/Signal/blob/master/scripts/update-homebrew-cask.sh)
— don't edit `Casks/signal.rb` here by hand.

Installed apps self-update via Sparkle, so `brew upgrade` leaves them alone
unless you pass `--greedy`.

> **Note:** Signal Messenger's cask (`homebrew/cask/signal`) also installs to
> `/Applications/Signal.app`, so the two apps can't be installed side by side
> under their default names.

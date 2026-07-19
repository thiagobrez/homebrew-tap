# thiagobrez/homebrew-tap

Homebrew tap for my macOS apps.

| App | Install | What it is |
| --- | --- | --- |
| [Signal](https://github.com/thiagobrez/Signal) | `brew install thiagobrez/tap/signal` | Focus on three things a day |
| [UltraWin](https://github.com/thiagobrez/UltraWin) | `brew install thiagobrez/tap/ultrawin` | Share only part of your screen in video calls |

Each cask installs the same Developer ID–signed, notarized DMG that is attached
to that app's GitHub Releases.

## Maintenance

The casks are updated automatically by each app's release workflow
(`release-build.yml`), from the template in that app's
`scripts/update-homebrew-cask.sh` — don't edit the files in `Casks/` here by
hand.

Installed apps self-update via Sparkle, so `brew upgrade` leaves them alone
unless you pass `--greedy`.

> **Note:** Signal Messenger's cask (`homebrew/cask/signal`) also installs to
> `/Applications/Signal.app`, so the two apps can't be installed side by side
> under their default names.

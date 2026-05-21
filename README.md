# Sovrium Homebrew Tap

Homebrew tap for [Sovrium](https://sovrium.com) — the configuration-driven application platform.

## Install

```sh
brew install sovrium/tap/sovrium
```

or:

```sh
brew tap sovrium/tap
brew install sovrium
```

## Upgrade

```sh
brew upgrade sovrium
# equivalently, the binary self-updates source-aware:
sovrium update
```

## Notes

`Formula/sovrium.rb` is generated and pushed automatically on each release by CI
(`sovrium/sovrium` → `.github/workflows/release.yml`, the `update-homebrew` job).
Do not edit the formula by hand — changes will be overwritten on the next release.

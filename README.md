# warkurr's Homebrew Tap

Official Homebrew tap for [AniMac](https://github.com/warkurr/AniMac-Releases) and macOS software by [@warkurr](https://github.com/warkurr).

## Installation

Install **AniMac** in one command:

```bash
brew install --cask warkurr/tap/animac
```

Or tap the repository first:

```bash
brew tap warkurr/tap
brew install --cask animac
```

## Available Casks

| Cask | Description | macOS |
|---|---|---|
| [`animac`](Casks/animac.rb) | Native macOS client for AniList, built with SwiftUI | Sonoma 14.0+ |

## Updating

```bash
brew upgrade --cask animac
```

## Uninstalling

```bash
brew uninstall --zap --cask animac
```

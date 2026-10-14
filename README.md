# Benny93 Tap

Homebrew casks for apps by Benny93. There are no formulae here.

## How do I install these casks?

Use the fully-qualified name, which trusts only that cask (Homebrew requires explicit trust for non-official taps):

```bash
brew tap benny93/tap
brew install --cask benny93/tap/fastscancleaner
```

To upgrade later:

```bash
brew update && brew upgrade --cask benny93/tap/fastscancleaner
```

## Casks

| Cask | Upstream |
|---|---|
| [fastscancleaner](Casks/fastscancleaner.rb) | [Benny93/fast-scan-cleaner](https://github.com/Benny93/fast-scan-cleaner) |

## How this tap is maintained

Casks point at the GitHub Releases of each upstream project. The [`brew bump`](.github/workflows/autobump.yml) workflow runs daily, uses each cask's `livecheck` block to detect a new release, recomputes the checksums and opens a bump PR; [`brew test-bot`](.github/workflows/tests.yml) plus `brew audit --cask --strict --online` gate every PR and push.

`brew trust benny93/tap` (whole tap) also works, but is broader than needed — see [Tap Trust](https://docs.brew.sh/Tap-Trust).

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

# BearnyTerm Homebrew Tap

Homebrew Cask for [BearnyTerm](https://github.com/michael-grunewalder/homebrew-bearnyterm/releases).

## Install

```sh
brew tap michael-grunewalder/bearnyterm
brew install --cask bearnyterm
```

The current build is signed with Apple Development and is not notarized. If macOS blocks the
first launch, allow BearnyTerm in System Settings → Privacy & Security, or install without the
quarantine flag:

```sh
brew install --cask --no-quarantine bearnyterm
```

Requires macOS 15 or later.

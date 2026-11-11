cask "bearnyterm" do
  version "0.8.0"
  sha256 "f4fea7fa69f1799cd23ee6f206ddfadeb22241626d1a5c14e26b2f58b74d8cc8"

  url "https://github.com/michael-grunewalder/homebrew-bearnyterm/releases/download/v#{version}/BearnyTerm.dmg"
  name "BearnyTerm"
  desc "Native macOS terminal with an integrated AI agent"
  homepage "https://github.com/michael-grunewalder/homebrew-bearnyterm"

  depends_on macos: :sequoia

  app "BearnyTerm.app"

  caveats <<~EOS
    This build is signed with an Apple Development certificate and is not notarized.
    macOS may block the first launch. Allow BearnyTerm in System Settings → Privacy & Security,
    or reinstall with:
      brew install --cask --no-quarantine bearnyterm
  EOS

  zap trash: [
    "~/Library/Application Support/BearnyTerm",
    "~/Library/Caches/codes.bearny.terminal",
    "~/Library/Logs/BearnyTerm",
    "~/Library/Preferences/codes.bearny.terminal.plist",
  ]
end

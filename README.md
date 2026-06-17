 # homebrew-hermes
 
 A [Homebrew](https://brew.sh) tap for the [Hermes Agent Desktop](https://hermes-agent.nousresearch.com) — the self-improving AI agent by [Nous Research](https://nousresearch.com).
 
 ## Install
 
 ```bash
 brew tap viogus/homebrew-hermes
 brew install --cask hermes-agent
 ```
 
 ## About
 
 Hermes Agent is an open-source (MIT) AI agent desktop app for macOS, Windows, and Linux. It connects across Telegram, Discord, Slack, WhatsApp, Signal, email, and terminal — one agent, one memory, every surface.
 
 This tap tracks the macOS DMG published at `hermes-assets.nousresearch.com`. The cask version follows the Hermes Agent release version (not the setup wrapper version).
 
 ## Auto-updates
 
 A [GitHub Actions workflow](./.github/workflows/update.yml) runs daily to check for new releases and update the cask automatically.

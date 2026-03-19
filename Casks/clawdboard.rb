cask "clawdboard" do
  version "0.1.0"
  sha256 "fafc90a3a09683df6cb3f5dd8b3f343a087c8f864fb3e2fecfc3edb691614f2b"

  url "https://github.com/apocohq/clawdboard/releases/download/v0.1.0/Clawdboard-v0.1.0.zip"
  name "Clawdboard"
  desc "macOS menu bar app for monitoring Claude Code agent sessions"
  homepage "https://github.com/apocohq/clawdboard"

  depends_on macos: ">= :sonoma"

  app "Clawdboard.app"

  zap trash: "~/.clawdboard"
end

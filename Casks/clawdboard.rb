cask "clawdboard" do
  version "0.1.0"
  sha256 "b037c5768ec2cdb994e7b0b0a2c4ef1114d41813d7785b1e1949239d3f8fdb1c"

  url "https://github.com/apocohq/clawdboard/releases/download/v0.1.0/Clawdboard-v0.1.0.zip"
  name "Clawdboard"
  desc "macOS menu bar app for monitoring Claude Code agent sessions"
  homepage "https://github.com/apocohq/clawdboard"

  depends_on macos: ">= :sonoma"

  app "Clawdboard.app"

  zap trash: "~/.clawdboard"
end

cask "clawdboard" do
  version "0.1.1"
  sha256 "61a76ecd34f701ed416cc13f0b8ee8f39811aed5d506fdf1600e38d58b2331b1"

  url "https://github.com/apocohq/clawdboard/releases/download/v0.1.1/Clawdboard-v0.1.1.zip"
  name "Clawdboard"
  desc "macOS menu bar app for monitoring Claude Code agent sessions"
  homepage "https://github.com/apocohq/clawdboard"

  depends_on macos: ">= :sonoma"

  app "Clawdboard.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Clawdboard.app"]
  end

  zap trash: "~/.clawdboard"
end

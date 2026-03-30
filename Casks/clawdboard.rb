cask "clawdboard" do
  version "0.1.4"
  sha256 "4440385e6db7d27ae2cfe75c611f4188236a45baa96f107299d5b85ed90a8f13"

  url "https://github.com/apocohq/clawdboard/releases/download/v0.1.4/Clawdboard-v0.1.4.zip"
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

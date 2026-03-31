cask "clawdboard" do
  version "0.1.5"
  sha256 "2ddda49ef80636c80b61139cfa5fc5fcbd03bd2b4ea0240a831f69d800ec48e6"

  url "https://github.com/apocohq/clawdboard/releases/download/v0.1.5/Clawdboard-v0.1.5.zip"
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

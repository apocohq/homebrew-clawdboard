cask "clawdboard" do
  version "0.1.3"
  sha256 "3a85ebd82971f7666d1b28e08e746d7a8220a4e9a363d044ba6ab417c8d3ff58"

  url "https://github.com/apocohq/clawdboard/releases/download/v0.1.3/Clawdboard-v0.1.3.zip"
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

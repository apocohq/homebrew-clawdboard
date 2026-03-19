cask "clawdboard" do
  version "0.1.0"
  sha256 "fe360a105b1365a368427d1724a204de99e3fdec3f9125c6c9fbd7701624a79f"

  url "https://github.com/apocohq/clawdboard/releases/download/v0.1.0/Clawdboard-v0.1.0.zip"
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

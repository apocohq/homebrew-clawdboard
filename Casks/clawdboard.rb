cask "clawdboard" do
  version "0.1.0"
  sha256 "a4b1b8aed2dfab41e9b153f30e9479407b3d23bc8973084962d54b627c387c21"

  url "https://github.com/apocohq/clawdboard/releases/download/v0.1.0/Clawdboard-v0.1.0.zip"
  name "Clawdboard"
  desc "macOS menu bar app for monitoring Claude Code agent sessions"
  homepage "https://github.com/apocohq/clawdboard"

  depends_on macos: ">= :sonoma"

  app "Clawdboard.app"
  binary "#{appdir}/Clawdboard.app/Contents/MacOS/Clawdboard", target: "clawdboard"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Clawdboard.app"]
  end

  zap trash: "~/.clawdboard"
end

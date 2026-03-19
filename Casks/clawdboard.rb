cask "clawdboard" do
  version "0.1.0"
  sha256 "b10c8b0bde7983a792c568985ae1eb347ac734339459e2c4581cd5beed93bbcf"

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

cask "clawdboard" do
  version "0.1.2"
  sha256 "8bfd7df6d7766ce32113dfc8b75c2b9f92c0ca472d58a78a4e7530ec94253da0"

  url "https://github.com/apocohq/clawdboard/releases/download/v0.1.2/Clawdboard-v0.1.2.zip"
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

cask "animac" do
  version "0.3.0"
  sha256 "840a6c337bec18b59c38e5d63e4546b194ad8aa7a218e4dbaaf267c098651cb5"

  url "https://github.com/warkurr/AniMac-Releases/releases/download/v#{version}/AniMac.dmg"
  name "AniMac"
  desc "Native macOS client for AniList"
  homepage "https://github.com/warkurr/AniMac-Releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "AniMac.app"

  zap trash: [
    "~/Library/Application Support/AniMac",
    "~/Library/Caches/com.warkurr.animac",
    "~/Library/Preferences/com.warkurr.animac.plist",
  ]
end

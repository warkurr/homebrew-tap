cask "animac" do
  version "1.1.0"
  sha256 "edd0d89e734d81b8f2c5486748dec4e2dfc79ebb7ef9e5db81d78f9e1d9cd3db"

  url "https://github.com/warkurr/AniMac/releases/download/v#{version}/AniMac.dmg"
  name "AniMac"
  desc "Native macOS client for AniList"
  homepage "https://github.com/warkurr/AniMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "AniMac.app"

  zap trash: [
    "~/Library/Application Support/AniMac",
    "~/Library/Caches/com.warkurr.animac",
    "~/Library/Preferences/com.warkurr.animac.plist",
  ]
end

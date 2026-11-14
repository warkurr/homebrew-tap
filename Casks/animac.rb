cask "animac" do
  version "0.3.0"
  sha256 "925b0fa35f0b1f2d77670a4f1ab47f4939606434d9991fb5bbf5719838943259"

  url "https://github.com/warkurr/AniMac/releases/download/v#{version}/AniMac.dmg"
  name "AniMac"
  desc "Native macOS client for AniList"
  homepage "https://github.com/warkurr/AniMac"

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

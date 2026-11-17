cask "animac" do
  version "0.4.0"
  sha256 "fedd858dd57bea8de8fd7b70a4842a4214d23ebf647a38290c9bdc026b394303"

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

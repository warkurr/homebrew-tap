cask "animac" do
  version "0.3.1"
  sha256 "a73a4e1b9ee19b9af12afb61ed30900d2a52a1c9cf6bcecfc57ded4dab397464"

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

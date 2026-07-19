cask "ultrawin" do
  version "1.1.0"
  sha256 "53a22ff7fb0b23a983843469d62dc1236a9dd95fcbe778df7c0cb2da682c3224"

  url "https://github.com/thiagobrez/UltraWin/releases/download/v#{version}/UltraWin-#{version}.dmg",
      verified: "github.com/thiagobrez/UltraWin/"
  name "UltraWin"
  desc "Share only part of your ultrawide screen in video calls"
  homepage "https://thiagobrez.github.io/UltraWin/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "UltraWin.app"

  zap trash: [
    "~/Library/Preferences/ski.brezin.ultrawin.plist",
    "~/Library/Caches/ski.brezin.ultrawin",
    "~/Library/HTTPStorages/ski.brezin.ultrawin",
  ]
end

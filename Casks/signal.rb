cask "signal" do
  version "1.0.2"
  sha256 "16d7dad6de1ba194caab475ccd243d7adbb10b2bd3cce1c929d12a3523597f9c"

  url "https://github.com/thiagobrez/Signal/releases/download/v#{version}/Signal-#{version}.dmg",
      verified: "github.com/thiagobrez/Signal/"
  name "Signal"
  desc "Daily planner for focusing on three things a day"
  homepage "https://thiagobrez.github.io/Signal/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Signal.app"

  zap trash: "~/Library/Containers/ski.brezin.signal"
end

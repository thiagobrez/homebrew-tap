cask "signal" do
  version "1.3.0"
  sha256 "4f9d32c54db71c447f2ca6b592357c9c69754006ab64e57c23a46519913d0b78"

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

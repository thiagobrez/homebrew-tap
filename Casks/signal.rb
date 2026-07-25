cask "signal" do
  version "1.4.0"
  sha256 "ef055c20cd23cf6c084d271577497a934413f6acd9b7603585c6a251536fe634"

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

cask "signal" do
  version "1.5.0"
  sha256 "d65fa6bf3f8e041c535ccff505556eb41c4145a638bbc81b0926e1e403d3fcfe"

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

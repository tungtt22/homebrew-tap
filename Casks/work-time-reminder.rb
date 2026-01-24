cask "work-time-reminder" do
  version "1.3.0"
  sha256 "94f945cacca3dc38f5f9aacb964ad551f5d17d9e4e2a4cbb163dde80ab6197f4"

  url "https://github.com/tungtt22/WorkTimeReminder/releases/download/v#{version}/WorkTimeReminder-#{version}.zip"
  name "Work Time Reminder"
  desc "macOS menu bar app that reminds you to take regular breaks"
  homepage "https://github.com/tungtt22/WorkTimeReminder"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WorkTimeReminder.app"

  zap trash: [
    "~/Library/Preferences/com.yourname.WorkTimeReminder.plist",
  ]
end

cask "work-time-reminder" do
  version "1.3.1"
  sha256 "ed8daef59843c03ca4bfbee225d7186aba4c667b39277cd7d3d8f86da7f40fa8"

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

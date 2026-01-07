cask "work-time-reminder" do
  version "1.1.0"
  sha256 "71701933f462140406629070568b3c0a1387139380c7988180426c7697404d31"

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

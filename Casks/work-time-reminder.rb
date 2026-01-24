cask "work-time-reminder" do
  version "1.3.0"
  sha256 "d7d13329b0687bc4966fe880a2189bc58ef3bc44e598c9f29e939ad0b422bba1"

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

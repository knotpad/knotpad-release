cask "knotpad" do
  version "0.2.4"

  on_intel do
    sha256 "80f13d3cdd706ba9d4529a87c354b5c1312c6998c652d744efc5edaf21f03f4a"
    url "https://github.com/knotpad/knotpad-release/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "eb4f37d1a84c48d57910a4312eca0155024cd56435d8e40b1b0f99ecb854eb6c"
    url "https://github.com/knotpad/knotpad-release/releases/download/v#{version}/knotpad_#{version}_aarch64.dmg"
  end

  name "Knotpad"
  desc "Note-first project management with automatic task generation"
  homepage "https://knotpad.app"

  app "Knotpad.app"

  zap trash: [
    "~/Library/Application Support/knotpad",
    "~/Library/Preferences/app.knotpad.plist",
    "~/Library/Logs/knotpad",
  ]
end

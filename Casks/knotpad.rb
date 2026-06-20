cask "knotpad" do
  version "0.2.4"

  on_intel do
    sha256 "3086a68561fb32a231f6cae45ed41e16d24490c9675025d51e2e9ee4cdee80af"
    url "https://github.com/knotpad/knotpad-release/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "c75c603beb9db24ec4703acf529c80ef3c271ab6ffd309a6aaea7d29cb0159fa"
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

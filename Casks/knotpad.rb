cask "knotpad" do
  version "0.2.4"

  on_intel do
    sha256 "87b6909e874347eb2ca33d1d37f155c83a422e41e0a8c5ffcdd029fbe096a8bc"
    url "https://github.com/knotpad/homebrew-knotpad/releases/download/v#{version}/knotpad_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "8ab78b71ca7ace4e2d0e84be114193bfda0943c0d845a03d682595515b6dc929"
    url "https://github.com/knotpad/homebrew-knotpad/releases/download/v#{version}/knotpad_#{version}_aarch64.dmg"
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

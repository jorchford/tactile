# typed: strict
# frozen_string_literal: true

cask "tactile" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.60"
  sha256 arm:   "7f5fe606931fb9b8266db080e16a79c157304d5b31b00a5458311e81fd4aa09e",
         intel: "63365961a89b299950a4c4bd0cdb387d401b9ca9246008e83c579f3da9dc654f"

  url "https://github.com/jorchford/tactile/releases/download/v#{version}/Tactile-#{arch}.zip"
  name "Tactile"
  name "秒触"
  desc "Next-generation 120Hz trackpad and Magic Mouse gesture powerhouse"
  homepage "https://app.needai.top/app/tactile"

  livecheck do
    url "https://raw.githubusercontent.com/jorchford/tactile/master/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tactile.app"

  uninstall quit: "com.tactile.Tactile"

  zap trash: [
    "~/Library/Application Support/Tactile",
    "~/Library/Caches/com.tactile.Tactile",
    "~/Library/HTTPStorages/com.tactile.Tactile",
    "~/Library/Preferences/com.tactile.Tactile.plist",
    "~/Library/Saved Application State/com.tactile.Tactile.savedState",
  ]
end

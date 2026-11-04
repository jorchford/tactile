# typed: strict
# frozen_string_literal: true

cask "tactile" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.1"
  sha256 arm:   "6eacbaa52c97c68d2066f388c86740f912c4636112aa2d882a7a193f76641fd3",
         intel: "19f4cee85e3f791f3ade80045305ab84a300dfaca0a4864a1950a94b7258b16e"

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

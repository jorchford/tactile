# typed: strict
# frozen_string_literal: true

cask "tactile" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.30"
  sha256 arm:   "4279d52c93a3ef2ccb14aef79b01e893892a47522417827b1a07540ef1eec174",
         intel: "ed32b3921341b9df1f14e392eb93780046fd639515ccd3e0c9739964c1cbbab5"

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

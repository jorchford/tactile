# typed: strict
# frozen_string_literal: true

cask "tactile" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.1"
  sha256 arm:   "543e47fe539b2f3fbfb341541d438012b9ca61a4b62835e2fefd3b4aaa0757dc",
         intel: "843634cac564d68dd5ff76129b676d58f0b56d03062ec043298cb4009cab3675"

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

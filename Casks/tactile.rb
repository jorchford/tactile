# typed: strict
# frozen_string_literal: true

cask "tactile" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "0.21"
  sha256 arm:   "42a1503e2a63c82ba844623086721e80324a0a81e31b489f448e0ab9f97e576a",
         intel: "b8cf8718490fc7f93f40cced606ca0ece4822872cf7ca451c187c821a449e31d"

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

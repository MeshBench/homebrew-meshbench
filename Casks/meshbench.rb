cask "meshbench" do
  version "0.0.8"
  sha256 "17e4f7d4f4f3385ed03665d8f46f37ba5dad8e9535f8d2c688233f3bd661a18a"

  url "https://github.com/MeshBench/meshbench/releases/latest/download/MeshBench-arm64-compact.dmg",
      verified: "github.com/MeshBench/meshbench/"
  name "MeshBench"
  desc "RF-accurate MeshCore simulator, the application on its own"
  homepage "https://meshbench.github.io/"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "MeshBench.app"

  zap trash: [
    "~/Library/Application Support/meshbench",
    "~/Library/Caches/meshbench",
    "~/Library/Preferences/io.github.meshbench.meshbench.plist",
    "~/Library/Saved Application State/io.github.meshbench.meshbench.savedState",
  ]
end

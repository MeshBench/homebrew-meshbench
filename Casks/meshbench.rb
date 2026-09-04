cask "meshbench" do
  version "0.0.6"
  sha256 "f6165cd84316e1fee4a950b0e98feb359a9ddbdfdd71fc757940dec82d0ea7d9"

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

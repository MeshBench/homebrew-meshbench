cask "meshbench" do
  version "0.0.7"
  sha256 "cc74feff48700accac2a12be0b16169f8d220cc271bf78c394595cceb9c5f394"

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

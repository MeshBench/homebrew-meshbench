cask "meshbench" do
  version "0.4.0"
  sha256 "7a5b8f002d1183945172046397d70af57df2175cea1ee789bd41dd0e6d5201e3"

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

cask "meshbench" do
  version "0.0.10"
  sha256 "a1cb59e9d939d82298199bfbc1e548c7c3b3efb0034dc7069724021e62a0d97e"

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

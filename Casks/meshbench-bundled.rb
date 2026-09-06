cask "meshbench-bundled" do
  version "0.0.9"
  sha256 "b75dbc12c4d84b9997ad01d230a6d6102d26e378dbfc099d70cbde8a7dce5ef4"

  url "https://github.com/MeshBench/meshbench/releases/latest/download/MeshBench-arm64-bundled.dmg",
      verified: "github.com/MeshBench/meshbench/"
  name "MeshBench"
  desc "RF-accurate MeshCore simulator, with the QEMU and Renode emulators"
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

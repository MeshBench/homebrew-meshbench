cask "meshbench-bundled" do
  version "0.0.8"
  sha256 "b44c1b2e568146b5cabc0ee8598c972a29a6c6dbf25204c93c47d697830fda92"

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

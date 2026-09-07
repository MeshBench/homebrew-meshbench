cask "meshbench-bundled" do
  version "0.0.10"
  sha256 "e9666b8a2f7322f2b2b8cd38c3dc8451d96056aed8d07f6bf140ea2336552217"

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

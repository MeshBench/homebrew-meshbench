cask "meshbench-bundled" do
  version "0.0.6"
  sha256 "83721ac7429f633ffdee85174b914e6de81d6eac860f61cd00e157bb83d513f0"

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

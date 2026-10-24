cask "meshbench-bundled" do
  version "0.3.0"
  sha256 "678a6813b2e9437a787af4249da27ba6cd25a28665a150b2f97e36a3881ff962"

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

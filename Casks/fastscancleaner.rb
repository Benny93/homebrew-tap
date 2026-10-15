cask "fastscancleaner" do
  version "0.2.0"
  sha256 "14e061b06afb4aef6472e682481a7245247678717bb276522956da9c7363ddf5"

  url "https://github.com/Benny93/fast-scan-cleaner/releases/download/v#{version}/FastScanCleaner_#{version}_aarch64.dmg"
  name "FastScanCleaner"
  desc "Find what fills your disk and clean it up safely, with MCP support"
  homepage "https://github.com/Benny93/fast-scan-cleaner"

  livecheck do
    url "https://github.com/Benny93/fast-scan-cleaner/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "FastScanCleaner.app"

  zap trash: "~/Library/Application Support/FastScanCleaner"
end

cask "fastscancleaner" do
  version "0.1.0"

  on_arm do
    sha256 "93cf5efa3cc6844bb5d17d63335d563eb74090c4f00d9e67ed5c8cace4d544ff"

    url "https://github.com/Benny93/fast-scan-cleaner/releases/download/v#{version}/FastScanCleaner_#{version}_aarch64.dmg"
  end

  name "FastScanCleaner"
  desc "Find what fills your disk and clean it up safely, with MCP support"
  homepage "https://github.com/Benny93/fast-scan-cleaner"

  livecheck do
    url "https://github.com/Benny93/fast-scan-cleaner/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  app "FastScanCleaner.app"

  zap trash: "~/Library/Application Support/FastScanCleaner"
end

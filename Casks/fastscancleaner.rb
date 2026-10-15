cask "fastscancleaner" do
  version "0.3.0"
  sha256 "0f1cce1de4e3fd955c2c7dbc9a71913b09d30c5c2dec223dc8785e4e9f8e7bf6"

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

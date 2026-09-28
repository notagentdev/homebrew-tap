cask "notagent" do
  version "0.1.66"
  sha256 "b7d2415a5982c4b8d9e95dba2070ba82834bbb1ba729ad0ecac32674ce337829"

  url "https://github.com/notagentdev/notagent/releases/download/v#{version}/notagent-v#{version}-aarch64-apple-darwin.tar.gz"
  name "notagent"
  desc "Terminal coding agent with multi-provider model support"
  homepage "https://notagent.dev/"

  livecheck do
    url "https://github.com/notagentdev/notagent"
    strategy :github_latest
  end

  depends_on arch: :arm64

  binary "notagent"
end

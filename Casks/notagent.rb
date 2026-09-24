cask "notagent" do
  version "0.1.59"
  sha256 "977081cbce98ddddc4e5aa414e961be3853b9dc11b0851b23deb489d0aee3dc4"

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

cask "notagent" do
  version "0.1.49"
  sha256 "4294988a6aaabfd4a6a544b0cbb727e409e3becf2d10405f8e0582214632512a"

  url "https://github.com/notagentdev/notagent/releases/download/v#{version}/notagent-v#{version}-aarch64-apple-darwin.tar.gz"
  name "notagent"
  desc "Terminal coding agent with multi-provider model support"
  homepage "https://notagent.dev/"

  livecheck do
    url "https://notagent.dev/api/latest-version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64

  binary "notagent"
end

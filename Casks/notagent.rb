cask "notagent" do
  version "0.1.51"
  sha256 "75a7925977009678e7e7933187514cac34fd7bc43c780e71936cee72e386ffb5"

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

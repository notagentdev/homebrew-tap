cask "notagent" do
  version "0.1.53"
  sha256 "f6af1a8c145b6e82a2a283a969a9ee48de532ad4a1c360742487f7cdce68fd3e"

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

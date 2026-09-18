cask "notagent" do
  version "0.1.54"
  sha256 "d599e0eca0d8cfb0b97cc379642003a1507b46abe2695cebcbec659e4ace0b1c"

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

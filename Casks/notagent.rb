cask "notagent" do
  version "0.1.52"
  sha256 "aa59ddcceb9940e37bba80dc078f64c234761a0cf6f8585ce8155b0b49b94e08"

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

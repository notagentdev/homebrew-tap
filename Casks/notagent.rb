cask "notagent" do
  version "0.1.77"
  sha256 "b66f91a386c7ff065e7f7ea56f78c7b94b1d41182772f2c50114175223c0ce51"

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

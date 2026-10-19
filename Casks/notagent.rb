cask "notagent" do
  version "0.1.74"
  sha256 "c5117d59f028fd0d9a67fbb6931fb2e77cdf65e97e199e6afe28bdd58761d5e2"

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

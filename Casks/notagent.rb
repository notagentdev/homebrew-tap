cask "notagent" do
  version "0.1.56"
  sha256 "250e3ff99ecb649d0fa5d170d68b97ed4c71c95631f4652a751ae9db1d77834c"

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

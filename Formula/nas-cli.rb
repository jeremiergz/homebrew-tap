class NasCli < Formula
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  url "https://github.com/jeremiergz/nas-cli/releases/download/20.09.1/nas-cli-darwin-amd64"
  head "https://github.com/jeremiergz/nas-cli.git"
  sha256 "95aa624d138320b8f735db908466a096e90f36d4f34e82baf50e2d8a2165d2c6"
  license "Apache-2.0"

  version "20.09.1"
  conflicts_with "nas-cli"
  bottle :unneeded

  def install
    bin.install "nas-cli-darwin-amd64" => "nas-cli"
  end

  test do
    system "#{bin}/nas-cli version"
  end
end

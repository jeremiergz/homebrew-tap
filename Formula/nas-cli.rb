class NasCli < Formula
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  url "https://github.com/jeremiergz/nas-cli/releases/download/21.04.9/nas-cli-darwin-amd64"
  head "https://github.com/jeremiergz/nas-cli.git"
  sha256 "6fff3e941103ef487d5959792d2657b77df6aac8f5e51bee88daeba1ae1314f9"
  license "Apache-2.0"

  version "21.04.9"
  conflicts_with "nas-cli"
  bottle :unneeded

  def install
    bin.install "nas-cli-darwin-amd64" => "nas-cli"
  end

  test do
    system "#{bin}/nas-cli version"
  end
end

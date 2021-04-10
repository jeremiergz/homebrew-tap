class NasCli < Formula
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  url "https://github.com/jeremiergz/nas-cli/releases/download/21.04.8/nas-cli-darwin-amd64"
  head "https://github.com/jeremiergz/nas-cli.git"
  sha256 "3ff5a78ae20b4bc6a2453c91ce7ab31f86a4c3733d008262a76a400c7ca1f3f0"
  license "Apache-2.0"

  version "21.04.8"
  conflicts_with "nas-cli"
  bottle :unneeded

  def install
    bin.install "nas-cli-darwin-amd64" => "nas-cli"
  end

  test do
    system "#{bin}/nas-cli version"
  end
end

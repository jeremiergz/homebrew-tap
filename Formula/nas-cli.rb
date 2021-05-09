class NasCli < Formula
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  url "https://github.com/jeremiergz/nas-cli/releases/download/21.05.1/nas-cli-darwin-amd64"
  head "https://github.com/jeremiergz/nas-cli.git"
  sha256 "16d4fd43e87718ce23ebb2b86b017d076762e305ae24ee64a5f5731d9a095497"
  license "Apache-2.0"

  version "21.05.1"
  conflicts_with "nas-cli"
  bottle :unneeded

  def install
    bin.install "nas-cli-darwin-amd64" => "nas-cli"
  end

  test do
    system "#{bin}/nas-cli version"
  end
end

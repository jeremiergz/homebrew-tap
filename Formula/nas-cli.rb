class NasCli < Formula
  desc "CLI application for managing my NAS."
  homepage "https://github.com/jeremiergz/nas-cli"
  url "https://github.com/jeremiergz/nas-cli/releases/download/21.04.12/nas-cli-darwin-amd64"
  head "https://github.com/jeremiergz/nas-cli.git"
  sha256 "a06d3f97ad59dad10ef653f65de9200616d2ab7f16357c83624f1f9a2f8ffa13"
  license "Apache-2.0"

  version "21.04.12"
  conflicts_with "nas-cli"
  bottle :unneeded

  def install
    bin.install "nas-cli-darwin-amd64" => "nas-cli"
  end

  test do
    system "#{bin}/nas-cli version"
  end
end

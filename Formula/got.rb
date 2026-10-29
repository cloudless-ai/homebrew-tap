class Got < Formula
  desc "Fast, folder-scoped Git checkouts"
  homepage "https://github.com/cloudless-ai/got"
  license "MIT"
  version "0.3.0"
  url "https://github.com/cloudless-ai/got/releases/download/v0.3.0/got-darwin-aarch64.tar.gz"
  sha256 "2d294e38e658d1c535731e8eb6929ea38016aba9dcc836178112f1ddec014a03"

  depends_on "git"

  def install
    odie "got is currently packaged for Apple Silicon only" unless Hardware::CPU.arm?
    bin.install "got"
  end

  test do
    assert_match "got #{version}", shell_output("#{bin}/got --version")
  end
end

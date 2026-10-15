class Got < Formula
  desc "Fast, folder-scoped Git checkouts"
  homepage "https://github.com/jimbobbennett/got"
  license "MIT"
  version "0.1.0"
  url "https://github.com/jimbobbennett/got/releases/download/v0.1.0/got-darwin-aarch64.tar.gz"
  sha256 "2e8e89ae03aff454a0602d1e4b9be98ce902460e976c1b2b60cc656bd4a4ee2b"

  depends_on "git"

  def install
    odie "got is currently packaged for Apple Silicon only" unless Hardware::CPU.arm?
    bin.install "got"
  end

  test do
    assert_match "got #{version}", shell_output("#{bin}/got --version")
  end
end

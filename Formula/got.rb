class Got < Formula
  desc "Fast, folder-scoped Git checkouts"
  homepage "https://github.com/jimbobbennett/got"
  license "MIT"
  version "0.2.0"
  url "https://github.com/jimbobbennett/got/releases/download/v0.2.0/got-darwin-aarch64.tar.gz"
  sha256 "de8ece6a2fac93c010d4bc8449734c995e1e693968f61533111d7b01e3b1bb51"

  depends_on "git"

  def install
    odie "got is currently packaged for Apple Silicon only" unless Hardware::CPU.arm?
    bin.install "got"
  end

  test do
    assert_match "got #{version}", shell_output("#{bin}/got --version")
  end
end

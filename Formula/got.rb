class Got < Formula
  desc "Fast, folder-scoped Git checkouts"
  homepage "https://github.com/cloudless-ai/got"
  license "MIT"
  version "0.2.1"
  url "https://github.com/cloudless-ai/got/releases/download/v0.2.1/got-darwin-aarch64.tar.gz"
  sha256 "b6809acffcecc33289fdb7c3a81ee01b83c890e42420f369286747d3df4b9d6f"

  depends_on "git"

  def install
    odie "got is currently packaged for Apple Silicon only" unless Hardware::CPU.arm?
    bin.install "got"
  end

  test do
    assert_match "got #{version}", shell_output("#{bin}/got --version")
  end
end

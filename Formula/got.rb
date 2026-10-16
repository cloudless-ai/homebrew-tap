class Got < Formula
  desc "Fast, folder-scoped Git checkouts"
  homepage "https://github.com/cloudless-ai/got"
  license "MIT"
  version "0.3.0"
  url "https://github.com/cloudless-ai/got/releases/download/v0.3.0/got-darwin-aarch64.tar.gz"
  sha256 "c2a5fad17a311df777828c2151b83c87f030f49ae65658356234d671ea958cfe"

  depends_on "git"

  def install
    odie "got is currently packaged for Apple Silicon only" unless Hardware::CPU.arm?
    bin.install "got"
  end

  test do
    assert_match "got #{version}", shell_output("#{bin}/got --version")
  end
end

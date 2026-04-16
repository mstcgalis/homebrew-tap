class Muz < Formula
  desc "Musical timing and frequency calculator"
  homepage "https://github.com/mstcgalis/muz"
  url "https://github.com/mstcgalis/muz/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "399ffc1c4d61bca29de84886e4a0f9e8bbc9dd176b131917320a6a9b3ee53ec6"
  license "MIT"

  def install
    bin.install "muz"
  end

  test do
    assert_match "muz #{version}", shell_output("#{bin}/muz --version")
  end
end

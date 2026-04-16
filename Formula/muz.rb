class Muz < Formula
  desc "Musical timing and frequency calculator"
  homepage "https://github.com/mstcgalis/muz"
  url "https://github.com/mstcgalis/muz/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "06df1decb3c09ee6d93eab09a8ef9eb237fac2b1f06baee8b1997faa69088674"
  license "MIT"

  def install
    bin.install "muz"
  end

  test do
    assert_match "muz #{version}", shell_output("#{bin}/muz --version")
  end
end

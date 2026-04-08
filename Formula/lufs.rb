class Lufs < Formula
  desc "LUFS analysis and track comparison for .wav files"
  homepage "https://github.com/mstcgalis/lufs"
  url "https://github.com/mstcgalis/lufs/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "19f98503760a3b4d1a8497bf7e47b00fdcda1cb839cae5666983b723edf8854d"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "lufs"
  end

  test do
    assert_match "lufs #{version}", shell_output("#{bin}/lufs --version")
  end
end

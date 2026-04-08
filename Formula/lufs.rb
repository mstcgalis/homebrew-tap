class Lufs < Formula
  desc "LUFS analysis and track comparison for .wav files"
  homepage "https://github.com/mstcgalis/lufs"
  url "https://github.com/mstcgalis/lufs/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "1256b26f0801d3ca1af12409444aac58a45c226a841bf92edad3fbc75412842b"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "lufs"
  end

  test do
    assert_match "lufs #{version}", shell_output("#{bin}/lufs --version")
  end
end

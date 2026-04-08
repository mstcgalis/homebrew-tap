class Lufs < Formula
  desc "LUFS analysis and track comparison for .wav files"
  homepage "https://github.com/mstcgalis/lufs"
  url "https://github.com/mstcgalis/lufs/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "248ad04a6e06c8d1d1678b6c58ce45f84e51eb944d7e8ebaaa0829d1051488ba"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "lufs"
  end

  test do
    assert_match "lufs #{version}", shell_output("#{bin}/lufs --version")
  end
end

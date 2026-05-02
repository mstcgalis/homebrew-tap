class Lufs < Formula
  desc "LUFS analysis and track comparison for .wav files"
  homepage "https://github.com/mstcgalis/lufs"
  url "https://github.com/mstcgalis/lufs/archive/refs/tags/v1.2.7.tar.gz"
  sha256 "75aee26eea2271d695f21f5a031a5a066e5e3580f1747ecab2f2a75b63ea0329"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "lufs"
  end

  test do
    assert_match "lufs #{version}", shell_output("#{bin}/lufs --version")
  end
end

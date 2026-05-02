class Lufs < Formula
  desc "LUFS analysis and track comparison for .wav files"
  homepage "https://github.com/mstcgalis/lufs"
  url "https://github.com/mstcgalis/lufs/archive/refs/tags/v1.2.8.tar.gz"
  sha256 "5d6ef95385c66c71f4bc26c3f5d542b66ecf299fe31b04f58e2f9afd723aa39b"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "lufs"
  end

  test do
    assert_match "lufs #{version}", shell_output("#{bin}/lufs --version")
  end
end

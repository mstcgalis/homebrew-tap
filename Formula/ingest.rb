class Ingest < Formula
  desc "CLI photo ingest from SD card / camera — EXIF-based folder organisation with Immich support"
  homepage "https://github.com/mstcgalis/ingest"
  url "https://github.com/mstcgalis/ingest/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "80f3cea7f2e92cf247d8c742898db494ff4bdee6f2c218c76ec03450303c1f26"
  license "MIT"
  head "https://github.com/mstcgalis/ingest.git", branch: "main"

  depends_on "exiftool"

  def install
    bin.install "ingest"
  end

  def caveats
    <<~EOS
      To configure ingest, create:
        ~/.config/ingest/config

      An example config is at:
        #{HOMEBREW_PREFIX}/share/ingest/config.example

      Optional: install immich-cli for Immich uploads:
        npm i -g @immich/cli
    EOS
  end

  def post_install
    (share/"ingest").mkpath
    (share/"ingest"/"config.example").write <<~CONFIG
      # ~/.config/ingest/config
      # Copy this file to ~/.config/ingest/config and edit as needed.

      DEST_ROOT="$HOME/Photos"
      RAW_SUBDIR="RAW"
      CAMERA_SEPARATOR="_"
      SKIP_EXTENSIONS="THM LRV"
      EJECT_AFTER=false
      IMMICH_UPLOAD=false
      IMMICH_SERVER="http://YOUR_IMMICH_HOST:2283"
      IMMICH_API_KEY="your-api-key-here"
      IMMICH_ALBUM=""
      LOG_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/ingest"
    CONFIG
  end

  test do
    # smoke test: --help exits 0 and mentions expected text
    assert_match "DCIM", shell_output("#{bin}/ingest -h")
  end
end

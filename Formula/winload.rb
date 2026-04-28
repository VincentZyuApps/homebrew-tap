# Auto-updates via GitHub Actions (see .github/workflows/update.yml)
# Supports: macOS (Intel & Apple Silicon), Linux (x86_64 & ARM64)
class Winload < Formula
  desc "Network Load Monitor - nload-like TUI tool for Windows/Linux/macOS"
  homepage "https://github.com/VincentZyuApps/winload"
  license "MIT"
  head "https://github.com/VincentZyuApps/winload.git", branch: "main"

  # Placeholder - will be auto-updated by GitHub Actions
  url "https://github.com/VincentZyuApps/winload/releases/download/v0.0.0/winload"
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  def install
    bin.install "winload"
  end

  test do
    system "#{bin}/winload", "--version"
  end
end